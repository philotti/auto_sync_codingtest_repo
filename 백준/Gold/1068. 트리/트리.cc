#include <iostream>
#include <vector>
#include <queue>
using namespace std;
int N, node[60], del, root, answer;
vector<int> v[60];
queue<int> q;

int main() {
	ios_base::sync_with_stdio(false);
	cin.tie(NULL);
	cout.tie(NULL);
	cin >> N;
	for (int i = 0; i < N; i++) {
		cin >> node[i];
		if (node[i] == -1)
			root = i;
		else
			v[node[i]].push_back(i);
	}
	cin >> del;
	if (root == del) {
		cout << 0;
		return 0;
	}
	int num = 0;
	for (int i = 0; i < (int)v[node[del]].size(); i++)
		if (v[node[del]][i] == del)
			num = i;
	v[node[del]].erase(v[node[del]].begin() + num);
	q.push(del);
	while (!q.empty()) {
		int n = q.front();
		int size = v[n].size();
		q.pop();
		for (int i = 0; i < size; i++) {
			q.push(v[n].back());
			v[n].pop_back();
		}
	}
	q.push(root);
	while (!q.empty()) {
		int n = q.front();
		int size = v[n].size();
		q.pop();
		if (!size && n != del)
			answer++;
		for (int i = 0; i < size; i++)
			q.push(v[n][i]);
	}
	cout << answer;
	return 0;
}