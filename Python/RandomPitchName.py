import random
import string
import time
import threading

def main():
    while True:
        try:
            chordNum = int(input("请输入弦数上限[1-4],下限默认为1: "))
            if chordNum not in range(1, 5):
                raise ValueError("数字必须在[1,4]内")
            break
        except ValueError as e:
            print(e)

    while True:
        try:
            time_interval = float(input("请输入随机音名输出间隔时间(s) (>0): "))
            if time_interval <= 0:
                raise ValueError("数字必须大于0")
            break
        except ValueError as e:
            print(e)

    def generate_random():
        while not stop_event.is_set():
            random_num = random.randint(1, chordNum)
            random_letter = random.choice(string.ascii_uppercase[:7])
            print(f"弦数: {random_num}, 音名: {random_letter}")
            time.sleep(time_interval)

    stop_event = threading.Event()
    thread = threading.Thread(target=generate_random)
    thread.start()

    input("按任意键结束这个程序\n")
    stop_event.set()
    thread.join()
    print("程序结束")

if __name__ == "__main__":
    main()