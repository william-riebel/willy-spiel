import sys


def willy(string):
    string = str(string)
    last = ""

    for i in string:
        if i == last or i == last.lower() or i == last.upper():
            return True
        last = i
    
    return False


if __name__ == "__main__":
    try:
        if type(sys.argv[1]) == str:
            print(willy(sys.argv[1]))
    except:
        print(willy(input("Willy mag das: ")))