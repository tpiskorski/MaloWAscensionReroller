# MaloWAscensionReroller
An addon that lets you find the perfect starting-abilities on Ascension's Draft realms

# Instructions for how to use

0. For complete automation you need to install AutoHotkey. Windows only. You can find script under autohotkey directory. 

1. Make a macro where you define the spell-ids of your must-have spells, your strong spells, your decent spells, and your weak spells like:  
/mar addmusthave 71  
/mar addmusthave 355  
/mar addstrong 6343  
/mar addstrong 2565  
/mar addstrong 25780  
/mar adddecent 78  
/mar addweak 5277  
/mar enable  

Note that any spells you don't define will be counted as worthless and randomly picked if no better option exist.  
If you run out of macro space you can split it up into multiple marcos, just make sure only 1 macro has the "/mar enable", and to press the one macro that does have it after you've pressed the other macros.

2. Drag the Draft Mode Deck item onto your bars at a convenient key-binding.  
3. Press the keybind for Draft Mode Deck, press "Accept" and press that key-bind again (so that both the 3 spell-choices and the Accept/Cancel frame is visible).  
4. Press the macro you created earlier.  
5. Spam-press the keybind for Draft Mode Deck.  

It will now keep rerolling until you have ALL must-haves AND you have a score of 7 or better. Strong spells gives 5 score, decent spells give 2 score and weak spells give 1 score. You can customize the required score and the values for the different tiers of spells by providing additional arguments to "/mar enable", like:  
/mar enable 15 7 4 2  
This example will require 15 score total, strong spells will give 7 score, decent spells will give 4 score, and weak spells will give 2 score.  
Must-have spells do not use the scoring system at all, if you don't provide any Strong/Decent/weak spells then the scoring system will be automatically disabled since it's impossible to get any score without spells in those tiers.  
Note that if you for example want 3 specific spells 100%, and for your fourth spell you want 1 of 5 possible good spells, then if you add those 3 first spells as must-haves, and you add the other 5 spells as Strong spells, the scoring system will only be active on that last spell, and you need to modify the required-score and/or the score given from strong spells to ensure that getting a single strong spell gives enough score to meet the required score. If you don't do this the roll can never be successful.

If you notice that the server is not responding quickly enough you can change the delay by running "/mar setdelay 1". The default delay is 0.5.

# Some math - PROBABLY OUT-DATED FOR SEASON 5, scroll down for some Season 5 stats
I've seen 78 different starting-spells. Assuming half of those are locked behind requiring other spells first that means that using a macro like:  
/mar addmusthave 71  
/mar addmusthave 355  
/mar addmusthave 6343  
/mar addmusthave 2565  
Will result in roughly a 0.0012% chance of hitting the right spells on a roll (Using (4/39) * (3/38) * (2/37) * (1/36)). This means that 83333 rolls are needed on average to hit it, which using the addon (which can do a reroll every 2 seconds) would take rougly 46 hours of rolling. So you're probably better off being less picky and using fewer must-have's and allowing multiple different spells to hit for Strong/Decent/Weak spells.  

Do note that only these spells are possible to get on the first of the four rolls:  
-- Healing Wave  
-- Immolate  
-- Defensive Stance  
-- Lightning Bolt  
-- Searing Totem  
-- Stoneskin Totem  
-- Sinister Strike  
-- Frostbolt  
-- Shadow Bolt  
-- Gouge  
-- Wrath  
-- Backstab  
-- Summon Imp  
-- Seal of Righteousness  
-- Fireball  
-- Moonfire  
-- Corruption  
-- Stealth  
-- Arcane Missiles  
-- Bear Form  
-- Battle Stance  
-- Tame Beast  

# To find out spell-ids
Non-complete list (mined from running the addon for hours and then running "/mar printseen"):  
-- Corruption - 172  
-- Charge - 100  
-- Seal of Righteousness - 21084  
-- Healing Wave - 331  
-- Bloodrage - 2687  
-- Searing Totem - 3599  
-- Mark of the Wild - 1126  
-- Overpower - 7384  
-- Righteous Fury - 25780  
-- Raptor Strike - 2973  
-- Sinister Strike - 1752  
-- Lightning Shield - 324  
-- Power Word: Fortitude - 1243  
-- Concussive Shot - 5116  
-- Swipe (Bear) - 779  
-- Fireball - 133  
-- Arcane Intellect - 1459  
-- Backstab - 53  
-- Blessing of Wisdom - 19742  
-- Defensive Stance - 71  
-- Thunder Clap - 6343  
-- Curse of Weakness - 702  
-- Devotion Aura - 465  
-- Life Tap - 1454  
-- Wrath - 5176  
-- Rejuvenation - 774  
-- Thorns - 467  
-- Summon Imp - 688  
-- Aspect of the Hawk - 13165  
-- Stoneskin Totem - 8071  
-- Fade - 586  
-- Demoralizing Roar - 99  
-- Demon Skin - 687  
-- Shield Bash - 72  
-- Maul - 6807  
-- Evasion - 5277  
-- Divine Protection - 498  
-- Smite - 585  
-- Heroic Strike - 78  
-- Victory Rush - 34428  
-- Healing Touch - 5185  
-- Earth Shock - 8042  
-- Sprint - 2983  
-- Shield Block - 2565  
-- Stoneclaw Totem - 5730  
-- Renew - 139  
-- Auto Shot - 965202  
-- Frostbolt - 116  
-- Battle Shout - 6673  
-- Arcane Shot - 3044  
-- Growl - 6795  
-- Shadow Word: Pain - 589  
-- Immolate - 348  
-- Serpent Sting - 1978  
-- Hunter's Mark - 1130  
-- Battle Stance - 2457  
-- Rend - 772  
-- Lightning Bolt - 403  
-- Hamstring - 1715  
-- Pick Pocket - 921  
-- Frost Armor - 168  
-- Blessing of Might - 19740  
-- Gouge - 1776  
-- Arcane Missiles - 5143  
-- Moonfire - 8921  
-- Shadow Bolt - 686  
-- Holy Light - 635  
-- Tame Beast - 965200 (Note: This spell takes up 3 of the 4 starter spell-slots)  
-- Aspect of the Monkey - 13163  
-- Stealth - 1784  
-- Fire Blast - 2136  
-- Bear Form - 5487  
-- Mongoose Bite - 1495  
-- Curse of Agony - 980  
-- Eviscerate - 2098  
-- Taunt - 355  
-- Slice and Dice - 5171  
-- Judgement of Light - 20271  
-- Judgement of Wisdom - 53408  

If a spell is missing from this list that is available as a starter-spell then find the spell-id on https://wotlk.evowow.com/ by finding the spell and looking at the URL of your browser. Please report any missing spells to me and I'll add them to the list above.

# Season 5 Statistics from randomly picking spells (updated 2019-11-18)
```
Number of times spell was available at roll #1
    Healing Wave (331): 58
    Immolate (348): 60
    Defensive Stance (71): 102
    Lightning Bolt (403): 68
    Searing Totem (3599): 63
    Stoneskin Totem (8071): 65
    Sinister Strike (1752): 58
    Moonfire (8921): 64
    Frostbolt (116): 60
    Shadow Bolt (686): 58
    Tame Beast (965200): 93
    Seal of Righteousness (21084): 70
    Gouge (1776): 63
    Summon Imp (688): 70
    Auto Shot (965202): 83
    Fireball (133): 54
    Bear Form (5487): 91
    Arcane Missiles (5143): 73
    Stealth (1784): 79
    Corruption (172): 62
    Wrath (5176): 58
    Battle Stance (2457): 91
    Backstab (53): 74

Number of times spell was available at roll #2
    Gouge (1776): 22
    Arcane Intellect (1459): 27
    Mark of the Wild (1126): 25
    Fireball (133): 24
    Growl (6795): 5
    Renew (139): 17
    Shadow Bolt (686): 27
    Curse of Weakness (702): 28
    Curse of Agony (980): 27
    Hamstring (1715): 18
    Battle Shout (6673): 22
    Evasion (5277): 24
    Rejuvenation (774): 22
    Aspect of the Monkey (13163): 27
    Raptor Strike (2973): 26
    Aspect of the Hawk (13165): 25
    Maul (6807): 1
    Mongoose Bite (1495): 25
    Hunter's Mark (1130): 21
    Stoneclaw Totem (5730): 24
    Summon Imp (688): 14
    Overpower (7384): 30
    Smite (585): 22
    Backstab (53): 11
    Power Word: Fortitude (1243): 23
    Devotion Aura (465): 20
    Sinister Strike (1752): 11
    Bear Form (5487): 28
    Stealth (1784): 16
    Fade (586): 16
    Slice and Dice (5171): 10
    Sprint (2983): 22
    Seal of Righteousness (21084): 22
    Wrath (5176): 17
    Victory Rush (34428): 26
    Defensive Stance (71): 16
    Shield Bash (72): 26
    Auto Shot (965202): 22
    Concussive Shot (5116): 22
    Heroic Strike (78): 19
    Holy Light (635): 20
    Healing Wave (331): 18
    Frost Armor (168): 22
    Serpent Sting (1978): 20
    Corruption (172): 28
    Healing Touch (5185): 22
    Taunt (355): 2
    Divine Protection (498): 22
    Thunder Clap (6343): 4
    Judgement of Light (20271): 1
    Pick Pocket (921): 2
    Swipe (Bear) (779): 5
    Moonfire (8921): 22
    Demoralizing Roar (99): 1
    Charge (100): 35
    Lightning Bolt (403): 23
    Blessing of Might (19740): 25
    Bloodrage (2687): 30
    Fire Blast (2136): 22
    Righteous Fury (25780): 24
    Shadow Word: Pain (589): 30
    Life Tap (1454): 23
    Rend (772): 31
    Blessing of Wisdom (19742): 26
    Demon Skin (687): 21
    Arcane Shot (3044): 30
    Earth Shock (8042): 22
    Lightning Shield (324): 21
    Searing Totem (3599): 22
    Stoneskin Totem (8071): 20
    Frostbolt (116): 13
    Thorns (467): 16
    Battle Stance (2457): 18
    Immolate (348): 20
    Arcane Missiles (5143): 21

Number of times spell was available at roll #3
    Gouge (1776): 27
    Arcane Intellect (1459): 24
    Mark of the Wild (1126): 17
    Fireball (133): 25
    Growl (6795): 7
    Renew (139): 24
    Shadow Bolt (686): 15
    Curse of Weakness (702): 23
    Curse of Agony (980): 21
    Hamstring (1715): 15
    Battle Shout (6673): 22
    Evasion (5277): 24
    Rejuvenation (774): 27
    Aspect of the Monkey (13163): 27
    Demon Skin (687): 17
    Aspect of the Hawk (13165): 25
    Maul (6807): 6
    Blessing of Might (19740): 22
    Hunter's Mark (1130): 25
    Stoneclaw Totem (5730): 18
    Summon Imp (688): 24
    Overpower (7384): 23
    Smite (585): 31
    Backstab (53): 20
    Power Word: Fortitude (1243): 24
    Arcane Shot (3044): 30
    Sinister Strike (1752): 19
    Bear Form (5487): 20
    Stealth (1784): 27
    Fade (586): 25
    Slice and Dice (5171): 4
    Sprint (2983): 22
    Seal of Righteousness (21084): 20
    Wrath (5176): 32
    Victory Rush (34428): 20
    Defensive Stance (71): 18
    Shield Bash (72): 17
    Auto Shot (965202): 20
    Concussive Shot (5116): 20
    Heroic Strike (78): 18
    Holy Light (635): 24
    Healing Wave (331): 21
    Frost Armor (168): 22
    Serpent Sting (1978): 34
    Corruption (172): 19
    Healing Touch (5185): 24
    Taunt (355): 3
    Judgement of Light (20271): 1
    Divine Protection (498): 22
    Shield Block (2565): 1
    Earth Shock (8042): 23
    Mongoose Bite (1495): 17
    Stoneskin Totem (8071): 21
    Moonfire (8921): 18
    Demoralizing Roar (99): 5
    Charge (100): 21
    Lightning Bolt (403): 20
    Swipe (Bear) (779): 7
    Pick Pocket (921): 11
    Fire Blast (2136): 14
    Devotion Aura (465): 16
    Shadow Word: Pain (589): 17
    Righteous Fury (25780): 16
    Life Tap (1454): 32
    Bloodrage (2687): 23
    Rend (772): 34
    Blessing of Wisdom (19742): 33
    Raptor Strike (2973): 24
    Lightning Shield (324): 26
    Searing Totem (3599): 15
    Arcane Missiles (5143): 27
    Frostbolt (116): 18
    Thorns (467): 20
    Battle Stance (2457): 19
    Immolate (348): 16
    Thunder Clap (6343): 3

Number of times spell was available at roll #4
    Gouge (1776): 33
    Arcane Intellect (1459): 25
    Mark of the Wild (1126): 28
    Arcane Missiles (5143): 21
    Growl (6795): 8
    Renew (139): 20
    Shadow Bolt (686): 29
    Curse of Weakness (702): 20
    Curse of Agony (980): 25
    Hamstring (1715): 19
    Battle Shout (6673): 13
    Evasion (5277): 21
    Rejuvenation (774): 26
    Bloodrage (2687): 25
    Demon Skin (687): 22
    Aspect of the Hawk (13165): 28
    Maul (6807): 10
    Mongoose Bite (1495): 32
    Hunter's Mark (1130): 36
    Stoneclaw Totem (5730): 19
    Summon Imp (688): 21
    Overpower (7384): 19
    Smite (585): 24
    Backstab (53): 26
    Power Word: Fortitude (1243): 19
    Devotion Aura (465): 23
    Sinister Strike (1752): 18
    Bear Form (5487): 29
    Stealth (1784): 30
    Fade (586): 31
    Slice and Dice (5171): 12
    Sprint (2983): 22
    Seal of Righteousness (21084): 23
    Wrath (5176): 24
    Victory Rush (34428): 27
    Defensive Stance (71): 33
    Shield Bash (72): 25
    Auto Shot (965202): 24
    Concussive Shot (5116): 28
    Heroic Strike (78): 16
    Holy Light (635): 25
    Healing Wave (331): 24
    Frost Armor (168): 20
    Serpent Sting (1978): 22
    Earth Shock (8042): 31
    Healing Touch (5185): 16
    Taunt (355): 1
    Judgement of Wisdom (53408): 3
    Divine Protection (498): 25
    Righteous Fury (25780): 25
    Pick Pocket (921): 1
    Life Tap (1454): 15
    Fireball (133): 18
    Swipe (Bear) (779): 7
    Demoralizing Roar (99): 3
    Charge (100): 23
    Lightning Bolt (403): 17
    Rend (772): 25
    Shadow Word: Pain (589): 26
    Fire Blast (2136): 23
    Stoneskin Totem (8071): 26
    Judgement of Light (20271): 1
    Moonfire (8921): 28
    Raptor Strike (2973): 26
    Arcane Shot (3044): 30
    Blessing of Might (19740): 29
    Thunder Clap (6343): 3
    Corruption (172): 25
    Lightning Shield (324): 26
    Searing Totem (3599): 16
    Blessing of Wisdom (19742): 19
    Frostbolt (116): 22
    Thorns (467): 20
    Battle Stance (2457): 23
    Immolate (348): 15
    Aspect of the Monkey (13163): 24
```

# Old statistics for Season 4 collected 2019-08-04)
```
Number of times spell was available at roll #1
    Healing Wave (331): 236
    Immolate (348): 248
    Defensive Stance (71): 319
    Wrath (5176): 203
    Searing Totem (3599): 265
    Stoneskin Totem (8071): 238
    Lightning Bolt (403): 254
    Sinister Strike (1752): 222
    Frostbolt (116): 240
    Shadow Bolt (686): 237
    Bear Form (5487): 305
    Tame Beast (965200): 348
    Backstab (53): 241
    Summon Imp (688): 231
    Seal of Righteousness (21084): 224
    Fireball (133): 213
    Auto Shot (965202): 340
    Arcane Missiles (5143): 243
    Stealth (1784): 331
    Gouge (1776): 224
    Moonfire (8921): 240
    Battle Stance (2457): 364
    Corruption (172): 255

Number of times spell was available at roll #2
    Gouge (1776): 99
    Arcane Intellect (1459): 100
    Mark of the Wild (1126): 80
    Fireball (133): 92
    Growl (6795): 3
    Renew (139): 95
    Shadow Bolt (686): 78
    Curse of Weakness (702): 81
    Curse of Agony (980): 86
    Hamstring (1715): 90
    Battle Shout (6673): 95
    Stoneskin Totem (8071): 88
    Rejuvenation (774): 110
    Bloodrage (2687): 89
    Demon Skin (687): 77
    Aspect of the Hawk (13165): 91
    Maul (6807): 6
    Mongoose Bite (1495): 70
    Hunter's Mark (1130): 71
    Stoneclaw Totem (5730): 81
    Summon Imp (688): 90
    Overpower (7384): 74
    Smite (585): 87
    Backstab (53): 95
    Power Word: Fortitude (1243): 79
    Devotion Aura (465): 71
    Sinister Strike (1752): 78
    Bear Form (5487): 85
    Stealth (1784): 90
    Fade (586): 92
    Slice and Dice (5171): 6
    Sprint (2983): 68
    Seal of Righteousness (21084): 73
    Wrath (5176): 78
    Victory Rush (34428): 97
    Defensive Stance (71): 81
    Shield Bash (72): 86
    Auto Shot (965202): 78
    Concussive Shot (5116): 75
    Heroic Strike (78): 104
    Eviscerate (2098): 10
    Holy Light (635): 91
    Healing Wave (331): 82
    Frost Armor (168): 83
    Serpent Sting (1978): 90
    Earth Shock (8042): 84
    Healing Touch (5185): 86
    Taunt (355): 7
    Swipe (Bear) (779): 5
    Judgement of Wisdom (53408): 3
    Divine Protection (498): 86
    Judgement of Light (20271): 5
    Shield Block (2565): 7
    Thunder Clap (6343): 14
    Pick Pocket (921): 7
    Moonfire (8921): 92
    Demoralizing Roar (99): 7
    Charge (100): 79
    Lightning Bolt (403): 83
    Evasion (5277): 88
    Righteous Fury (25780): 75
    Fire Blast (2136): 78
    Corruption (172): 72
    Shadow Word: Pain (589): 82
    Life Tap (1454): 99
    Arcane Missiles (5143): 67
    Blessing of Might (19740): 95
    Rend (772): 79
    Aspect of the Monkey (13163): 76
    Arcane Shot (3044): 92
    Lightning Shield (324): 82
    Searing Totem (3599): 80
    Raptor Strike (2973): 89
    Frostbolt (116): 74
    Thorns (467): 88
    Battle Stance (2457): 83
    Immolate (348): 88
    Blessing of Wisdom (19742): 75

Number of times spell was available at roll #3
    Gouge (1776): 77
    Arcane Intellect (1459): 90
    Mark of the Wild (1126): 80
    Arcane Missiles (5143): 70
    Growl (6795): 5
    Renew (139): 81
    Shadow Bolt (686): 89
    Curse of Weakness (702): 90
    Curse of Agony (980): 88
    Hamstring (1715): 84
    Battle Shout (6673): 80
    Evasion (5277): 87
    Rejuvenation (774): 90
    Bloodrage (2687): 83
    Demon Skin (687): 85
    Aspect of the Hawk (13165): 74
    Maul (6807): 3
    Blessing of Might (19740): 72
    Hunter's Mark (1130): 85
    Stoneclaw Totem (5730): 85
    Summon Imp (688): 91
    Overpower (7384): 82
    Smite (585): 84
    Backstab (53): 96
    Power Word: Fortitude (1243): 93
    Devotion Aura (465): 76
    Sinister Strike (1752): 87
    Bear Form (5487): 68
    Stealth (1784): 94
    Fade (586): 73
    Slice and Dice (5171): 12
    Sprint (2983): 92
    Seal of Righteousness (21084): 90
    Wrath (5176): 82
    Victory Rush (34428): 94
    Defensive Stance (71): 58
    Shield Bash (72): 92
    Auto Shot (965202): 64
    Concussive Shot (5116): 93
    Heroic Strike (78): 89
    Eviscerate (2098): 16
    Holy Light (635): 87
    Healing Wave (331): 76
    Frost Armor (168): 88
    Serpent Sting (1978): 87
    Corruption (172): 78
    Healing Touch (5185): 92
    Taunt (355): 7
    Judgement of Wisdom (53408): 5
    Shield Block (2565): 6
    Divine Protection (498): 96
    Judgement of Light (20271): 5
    Thunder Clap (6343): 14
    Pick Pocket (921): 6
    Swipe (Bear) (779): 6
    Moonfire (8921): 83
    Demoralizing Roar (99): 6
    Charge (100): 77
    Lightning Bolt (403): 105
    Fireball (133): 78
    Righteous Fury (25780): 89
    Fire Blast (2136): 97
    Life Tap (1454): 86
    Shadow Word: Pain (589): 87
    Rend (772): 67
    Stoneskin Totem (8071): 81
    Blessing of Wisdom (19742): 85
    Raptor Strike (2973): 103
    Arcane Shot (3044): 80
    Earth Shock (8042): 85
    Lightning Shield (324): 85
    Searing Totem (3599): 79
    Aspect of the Monkey (13163): 87
    Frostbolt (116): 74
    Thorns (467): 85
    Battle Stance (2457): 86
    Immolate (348): 79
    Mongoose Bite (1495): 85

Number of times spell was available at roll #4
    Gouge (1776): 89
    Arcane Intellect (1459): 81
    Mark of the Wild (1126): 100
    Fireball (133): 91
    Growl (6795): 7
    Renew (139): 80
    Shadow Bolt (686): 85
    Curse of Weakness (702): 77
    Curse of Agony (980): 95
    Hamstring (1715): 78
    Battle Shout (6673): 82
    Stoneskin Totem (8071): 78
    Rejuvenation (774): 83
    Bloodrage (2687): 95
    Demon Skin (687): 86
    Aspect of the Hawk (13165): 90
    Maul (6807): 6
    Blessing of Might (19740): 84
    Hunter's Mark (1130): 92
    Stoneclaw Totem (5730): 89
    Summon Imp (688): 92
    Overpower (7384): 109
    Smite (585): 88
    Backstab (53): 90
    Power Word: Fortitude (1243): 86
    Devotion Aura (465): 86
    Sinister Strike (1752): 79
    Bear Form (5487): 89
    Stealth (1784): 88
    Fade (586): 110
    Slice and Dice (5171): 16
    Sprint (2983): 88
    Seal of Righteousness (21084): 97
    Wrath (5176): 75
    Victory Rush (34428): 84
    Defensive Stance (71): 70
    Shield Bash (72): 98
    Auto Shot (965202): 89
    Concussive Shot (5116): 107
    Heroic Strike (78): 91
    Eviscerate (2098): 24
    Holy Light (635): 81
    Healing Wave (331): 86
    Frost Armor (168): 93
    Serpent Sting (1978): 94
    Corruption (172): 86
    Healing Touch (5185): 84
    Taunt (355): 9
    Shield Block (2565): 5
    Judgement of Wisdom (53408): 3
    Divine Protection (498): 82
    Swipe (Bear) (779): 3
    Pick Pocket (921): 8
    Judgement of Light (20271): 5
    Thunder Clap (6343): 11
    Moonfire (8921): 78
    Demoralizing Roar (99): 4
    Charge (100): 92
    Lightning Bolt (403): 75
    Evasion (5277): 95
    Righteous Fury (25780): 77
    Fire Blast (2136): 99
    Arcane Missiles (5143): 96
    Shadow Word: Pain (589): 103
    Blessing of Wisdom (19742): 87
    Rend (772): 89
    Life Tap (1454): 82
    Raptor Strike (2973): 108
    Arcane Shot (3044): 102
    Aspect of the Monkey (13163): 94
    Lightning Shield (324): 88
    Searing Totem (3599): 87
    Earth Shock (8042): 93
    Frostbolt (116): 79
    Thorns (467): 107
    Battle Stance (2457): 76
    Immolate (348): 83
    Mongoose Bite (1495): 96
```
