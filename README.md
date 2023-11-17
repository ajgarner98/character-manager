Dungeons and Dragons Character Manager MVP Specification
An application designed to help players manage their characters during a Dungeons and Dragons campaign.
Pain Point
There's a lot to keep track of during sessions and the problem gets even worse once the game starts. My application will keep track of the character's important information.

User Stories
As a user, I want to be able to login and create multiple characters.
As a user, I want to be able to update my character with relevant information when necessary. 
As a user, I want to be able to delete my character when I no longer want to use them.
As a user, I want to be able to track my character's condition.
As a user, I want to be able to share my character with other users.

Domain Model

Users
id
username
email
(devise fields)
password

Characters
id
name
user_id
level
character_class
appearance
background
armor_class
background
image
current_health
max_health
proficiency
race
speed
strength
dexterity 
constitution
intelligence
wisdom
charisma

Weapons
id
name
damage
weapon_type
character_id

Armors
id
name
armor_class
armor_type
character_id

Spells
id
name
level
character_id

Skills
id
name
modifier
character_id

Feat
id
name
description
character_id

Feature
id
name
description
character_id

