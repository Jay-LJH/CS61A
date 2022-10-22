def cake():
    print('beets')
    def pie():
        print('sweets')
        return 'cake'
    return pie
cho=cake()
more_chocolate, more_cake = cho(), cake
