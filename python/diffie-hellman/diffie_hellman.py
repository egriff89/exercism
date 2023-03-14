""" Diffie-Hellman key exchange """
import random

def private_key(_p: int) -> int:
    """ Generate private key """
    # 1 > key < p
    return random.randint(2, _p - 1)


def public_key(_p: int, _g: int, private: int) -> int:
    """ Generate public key given two primes and a private key """
    return (_g ** private) % _p


def secret(_p: int, public: int, private: int) -> int:
    """ Calculate shared secret """
    return (public ** private) % _p
