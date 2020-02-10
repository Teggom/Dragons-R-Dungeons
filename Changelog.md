# Changelog
New things will be documented here.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.0.3] - 2020-02-10
### Status
- Pushing changes from last time I worked seriously on the project in preparation to get back into it. 
- Redesigned how Menu will look
- Redesigned how events will function



## [1.0.2] - 1019-04-13
### Added
- Verbose setting for game running
- Bags and item menu + functions for sorting
- Switch menu: for use between Events. This is where you manage your inventory 
	-  Bag View Only for now, can't select it
- Text for the other 3 classes
- Randomly selected items
- Game Version as a thing in game
- Game Verson now on menu

### Fixed
- Keyboard input is now managed by a button hidden offscreen and focused to
- Fatal Error: ButtonProc called on invalid HWND (Finally)
	- see note in WindowManager.R/Clean_Frames() 

## [1.0.1] - 2019-04-01
### Added
- Character Select menu
- Character Select: Classes to choose
- Character Select: Text for Warrior
- Warrior Class
- Mage Class
- Thief Class
- Bard Class
- Escape Button exits game

### Fixed 
- Issue sourcing Manager.R, now runs cleanly from boot

## [1.0.0] - 2019-04-01
### Added
- Main Menu
- Credits
- Quit Button