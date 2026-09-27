"""Plot illustrative daily step counts for one week."""

import matplotlib.pyplot as plt

days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
steps = [7200, 8400, 6900, 10300, 9100, 11800, 9700]

plt.figure(figsize=(8, 4))
plt.plot(days, steps, marker="o")
plt.title("Daily Steps Walked Over Seven Days")
plt.xlabel("Day")
plt.ylabel("Steps")
plt.grid(True)
plt.tight_layout()
plt.show()
