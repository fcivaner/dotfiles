#!/bin/bash

## ~/.bashrc: executed by bash(1) for non-login shells.

## If not running interactively, don't do anything
case $- in
    *i*) ;;
    *) return;;
esac

## run .bash_aliases if exists
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

## run additional scripts in .bashrc.d
for script in ~/.bashrc.d/*
do
    source "$script"
done

