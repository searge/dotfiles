#! /usr/bin/env python3
import argparse


def count_letters(file_: str, N: int):
    """
    Count letters only, in certain line.

    :rtype: int
    """
    with open(file_) as l:
        for i, line in enumerate(l):
            if i == N:
                required: str = line
                letters: list = [x for x in required if x.isalpha()]
                return f"{len(letters)} LETTERS in {N + 1} line"
            else:
                break


def main():
    "Run script"
    parser = argparse.ArgumentParser()
    parser.add_argument("file", type=str, help="path to file")
    parser.add_argument("line", type=int, help="Line Index (starts from 0)")
    args = parser.parse_args()
    print(count_letters(args.file, args.line))


if __name__ == "__main__":
    main()
