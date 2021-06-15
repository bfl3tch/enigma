###### README
# E N I G M A

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]

![Enigma Welcome Screen](https://user-images.githubusercontent.com/74567704/122058751-ef28bb80-cdb9-11eb-8d42-7be2fc5db01a.png)

## Table of Contents

- [Overview](#overview)
- [Getting Started](#getting-started)
- [Tools Used](#tools-used)
- [Self Evaluation](#self-evaluation)
- [Contributors](#contributors)


------

### <ins>Overview</ins>

[Enigma](https://github.com/bfl3tch/enigma) is a 5, single person project during Mod 1 of 4, for Turing School's Back End Engineering Program.

The challenge was to build an Enigma machine similar to the one developed by Alan Turing and his team in WW2.  Each individual letter in the message is shifted four times, and only those who can calculate the key and the offset can determine those shift amounts.

Learning goals and areas of focus consisted of:

- Program structural architecture
- Break a program into logical components with proper encapsulation
- Data manipulation
- Outside file integration
- File IO
- Apply Enumerable techniques in a real context
- [Technical Requirements](https://backend.turing.edu/module1/projects/enigma/index)

### <ins>Getting Started</ins>

1. **Fork MY repository** 

2. **Copy the fork's URL**

2. **Clone your forked repository:** Run `git clone` with the copied URL.



- The best way to get started is to navigate into the `enigma` directory, open the `message.txt` file, and type out a message that you want encrypted.  Save the file.

- Next, still in your `enigma` directory, in your terminal, navigate into the `enigma` directory and run the following command in terminal to encrypt a message:  `ruby ./lib/encrypt.rb message.txt encrypted.txt`.  This generates an encrypted message along with a random key to access it, along with today's date.  

- You may specify a pre-determined key and date value if you wish, with the `Key` being a `5 digit number` and the `Date` in `DDMMYY` format.  
- The command would be  `ruby ./lib/encrypt.rb message.txt encrypted.txt 55555 290492` with 55555 being the key and 290492 representing the date (April 29, 1992).

- The encrypted message will now live in the `encrypted.txt` file.

- To unencrypt, you must provide the key.  If the date value is not today, you will need to pass the date as well.  The format is as follows:
- `ruby ./lib/decrypt.rb encrypted.txt decrypted.txt 55555 290492` If the date (`290492`) were not passed, the default would be today.  

- Both the key and the date MUST be correct to return the decrypted message.

### <ins>Tools Used</ins>
- Ruby 2.7.2
- RSpec
- Pry
- Atom
- GitHub
- SimpleCov


### <ins>Self Evaluation</ins>

Students were asked to just themselves according to [this](https://backend.turing.edu/module1/projects/enigma/rubric) rubric
![self_eval](https://user-images.githubusercontent.com/74567704/122062483-7297dc00-cdbd-11eb-8305-2f6a707dacd7.png)

### <ins>Contributors</ins>

👤  **Brian Fletcher**
- Github: [bfl3tch](https://github.com/bfl3tch)
- LinkedIn: [Brian Fletcher](https://www.linkedin.com/in/bfl3tch)




<!-- MARKDOWN LINKS & IMAGES -->

[contributors-shield]: https://img.shields.io/github/contributors/bfl3tch/enigma.svg?style=flat-square
[contributors-url]: https://github.com/bfl3tch/enigma/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/bfl3tch/enigma.svg?style=flat-square
[forks-url]: https://github.com/bfl3tch/enigma/network/members
[stars-shield]: https://img.shields.io/github/stars/bfl3tch/enigma.svg?style=flat-square
[stars-url]: https://github.com/bfl3tch/enigma/stargazers
[issues-shield]: https://img.shields.io/github/issues/bfl3tch/enigma.svg?style=flat-square
[issues-url]: https://github.com/bfl3tch/enigma/issues
