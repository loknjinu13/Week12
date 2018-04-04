#!/bin/sh
case $2 in
     bye)
        echo Fine, bye.
        ;;
     hi|hello)
        echo Nice writing.
        ;;
     what*)
        echo Whatever.
        ;;
     *)
        echo 'huh?'
        ;;
esac
