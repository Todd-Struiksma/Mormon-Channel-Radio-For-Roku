'**********************************************************
'**  Audio Player Example Application - Audio Playback
'**  November 2009
'**  Copyright (c) 2009 Roku Inc. All Rights Reserved.
'**	 Copyright (c) 2013 Todd Struiksma All Rights Reserved.
'**  Modified by Todd Struiksma 2013
'**********************************************************

' Mp3 support routines

Function CreateMp3SongList() as Object
    aa = CreateObject("roAssociativeArray")
    aa.posteritems = CreateObject("roArray", 10, true)
    song = CreateSong("Music","Enjoy uplifting music 24/7 featuring various artists and seasonal songs.  Live from MormonChannel.org.","","mp3", "http://mp3radio.lds.org/music", "pkg:/images/MormonChannel.jpg")
    aa.posteritems.push(song)

     return aa
End Function

Sub DoMp3(from as string)
    'Put up poster screen to pick a song to play
    SongList = CreateMp3SongList()
    Show_Audio_Screen(songlist.posteritems[0], from)
End Sub
