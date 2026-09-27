"""Plot illustrative likes on ten Instagram posts."""

import matplotlib.pyplot as plt

posts = list(range(1, 11))
likes = [42, 58, 51, 75, 63, 89, 72, 96, 84, 110]

plt.figure(figsize=(8, 4))
plt.plot(posts, likes, marker="o")
plt.title("Likes on the Last 10 Instagram Posts")
plt.xlabel("Post number")
plt.ylabel("Likes")
plt.xticks(posts)
plt.grid(True)
plt.tight_layout()
plt.show()
