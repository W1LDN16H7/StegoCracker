#!/usr/bin/env python
from pydub import AudioSegment


def mp3_to_wav(file, name):
    mp3_file = AudioSegment.from_mp3(file)
    wav_file = mp3_file.export(str(name), format="wav")

    print("\033[92mDone\033[0m ")


if __name__ == '__main__':
    name = input("Enter file name :")
    file = input("Mp3 File Path (example /music/name.mp3 :")
    print("\033[92mConverting...\033[0m")
    mp3_to_wav(file, name)
