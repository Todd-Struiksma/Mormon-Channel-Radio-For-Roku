'**********************************************************
'**  Audio Player Example Application - Audio Playback
'**  November 2009
'**  Copyright (c) 2009 Roku Inc. All Rights Reserved.
'**	 Copyright (c) 2013 Todd Struiksma All Rights Reserved.
'**  Modified by Todd Struiksma 2013
'**********************************************************

' Wma support routines

Function CreateWmaSongList() as Object
    aa = CreateObject("roAssociativeArray")
    aa.PosterItems = CreateObject("roArray", 10, true)
    song = CreateSong("Canal Mormón","El Canal Mormón proporciona a sus oyentes discusiones de inspiración sobre temas del Evangelio con programación original del Canal Mormón.  De MormonChannel.org en vivo.","", "mp3", "http://mp3radio.lds.org/spanish","pkg:/images/MormonChannel.jpg")
    aa.posteritems.push(song)
    return aa
End Function

Sub DoWma(from as string)
    'Since there is only one item, go right into playing the Wma stream
    SongList = CreateWmaSongList()
    Show_Audio_Screen(songlist.posteritems[0], from)
End Sub

