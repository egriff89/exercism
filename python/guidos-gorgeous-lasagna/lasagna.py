""" Time expected to bake lasagna, in minutes"""
EXPECTED_BAKE_TIME=40
""" Time for each layer to cook, in minutes"""
PREPARATION_TIME=2

def bake_time_remaining(elapsed_bake_time):
    """Calculate the bake time remaining.
    :param elapsed_bake_time: int baking time already elapsed.
    :return: int remaining bake time derived from 'EXPECTED_BAKE_TIME'.

    Returns remaining bake time
    """
    return EXPECTED_BAKE_TIME - elapsed_bake_time

def preparation_time_in_minutes(number_of_layers):
    """ Calculate the total preparation time in minutes
    :param number_of_layers: int, number of layers being added to lasagna

    Returns total preparation time relative to PREPARATION_TIME
    """
    return number_of_layers * PREPARATION_TIME

def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """ Calculate the total number of minutes the lasagna has been cooking
    :param number_of_layers: int, number of layers in lasagna
    :param elapsed_bake_time: int, number of minutes lasagna has been baking

    Returns total time lasagna has been cooking
    """
    return preparation_time_in_minutes(number_of_layers) + elapsed_bake_time
