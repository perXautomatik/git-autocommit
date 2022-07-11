last.fm loved and date of loved is not as relevant as the times you played the songs.
that is, the date of love coinsides with a playtime, then this the loved date is relevant, otherwise it's more likely it is a correction.

# todo

tsql?
get loved from a period of time (cachWhatisNotReturnedLaterOn)
    and topplays from a period of time (cachWhatisNotReturnedLaterOn)
    return a list of least popular (cached)
        take
        10 of loved
        10 top tracks allTimeYourPLays/popularity(numbers of listeners)
    use text scrubbing on each title
    search for each scrubbed title (cached)
    if title does not match scrubbed title
    return a nonmatch.

sql
    ## get loved To total track of artist count

    for each loved (cached timeperiod)
    for each artist of loved get user plays (cached timeperiod)
    return artist of loved/totalPlays
