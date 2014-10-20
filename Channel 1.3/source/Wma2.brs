'**********************************************************
'**  Audio Player Example Application - Audio Playback
'**  November 2009
'**  Copyright (c) 2009 Roku Inc. All Rights Reserved.
'**	 Copyright (c) 2013 Todd Struiksma All Rights Reserved.
'**  Modified by Todd Struiksma 2013
'**********************************************************

' Wma support routines

Function CreateWma2SongList() as Object
    aa = CreateObject("roAssociativeArray")
    aa.PosterItems = CreateObject("roArray", 10, true)
    song = CreateSong("Mormon Tabernacle Choir Stream.","Mormon Tabernacle Choir Stream.  Live from MormonChannel.org.","", "mp3", "http://d1jwofs8l1nyio.cloudfront.net/motab","pkg:/images/MormonChannel.jpg")
    aa.posteritems.push(song)
    return aa
End Function

Sub DoWma2(from as string)
    'Since there is only one item, go right into playing the Wma stream
    SongList = CreateWma2SongList()
    Show_Audio_Screen(songlist.posteritems[0], from)
End Sub
