#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Dec  8 23:32:43 2023

@author: zsomborveres-lakos
"""


def a():
    print("hello")
    return "hello", 203, 404


from abc import ABC, abstractmethod

# Define the Fly interface
class Fly(ABC):
    @abstractmethod
    def take_off(self):
        pass

    @abstractmethod
    def fly(self):
        pass

    @abstractmethod
    def land(self):
        pass

# Implement the Fly interface for Airplane
class Airplane(Fly):
    def take_off(self):
        print("Airplane is taking off.")
        return 34

    def fly(self):
        print("Airplane is flying.")

    def land(self):
        print("Airplane is landing.")

# Implement the Fly interface for Bird
class Bird(Fly):
    def take_off(self):
        print("Bird is taking off.")
        return "string"

    def fly(self):
        print("Bird is flying.")

    def land(self):
        print("Bird is landing.")

# Create instances of Airplane and Bird
airplane = Airplane()
bird = Bird()

# Demonstrate the flying behavior

print(airplane.take_off())


print(bird.take_off())



