import time
import platform
import psutil
import distro
from datetime import datetime

INTERVAL = 5

while True:
    print("Current Date and Time:", datetime.now().strftime("%Y-%m-%d %H:%M:%S"))
    print("System Information:")
    print(f"OS: {platform.system()} {distro.name()} {distro.version()}")
    print("CPU:", platform.processor())
    print("Total RAM:", psutil.virtual_memory().total // (1024 ** 2), "MB")
    print("Available RAM:", psutil.virtual_memory().available // (1024 ** 2), "MB")
    print("Disk Usage:", psutil.disk_usage('/').percent, "%")
    print("----------------------------------------")
    time.sleep(INTERVAL)
