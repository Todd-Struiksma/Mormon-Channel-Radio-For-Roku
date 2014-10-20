'**********************************************************
'**  Audio Player Example Application - Audio Playback
'**  November 2009
'**  Copyright (c) 2009 Roku Inc. All Rights Reserved.
'**	 Copyright (c) 2013 Todd Struiksma All Rights Reserved.
'**  Modified by Todd Struiksma 2013
'**********************************************************

' NPR support routines

Function CreateNPRSongList() as Object
    aa = CreateObject("roAssociativeArray")
    aa.posteritems = CreateObject("roArray", 10, true)
    song = CreateSong("MORMON TALK","Mormon Channel talk radio provides listeners with inspirational discussions about gospel topics with Mormon Channel original programming.  Live from MormonChannel.org.","", "mp3", "http://mp3radio.lds.org/mormon","pkg:/images/MormonChannel.jpg")
    aa.posteritems.push(song)
    return aa
End Function

Sub DoNPR(from as string)
    'Since there is only one item, go right into playing the NPR stream
    SongList = CreateNprSongList()
    Show_Audio_Screen(songlist.posteritems[0], from)
End Sub
