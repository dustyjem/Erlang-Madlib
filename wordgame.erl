-module(wordgame).
    	
    -export([wordie/0, chooseStoryType/1, the2_story/0, the_story/0, display/1, thankYou/0, welcomeTogame/0]).

welcomeTogame() ->
    {ok, Choice} = io:read("Do you speak english: yes/no\n > "),
    display(Choice).
display(Choice) when Choice == "yes" ->
        io:fwrite("Welcome to game"),
        wordie(); 
display(Choice) when Choice == "no" -> io:fwrite("We do not have another version of the game\n"),
        thankYou().

wordie() ->
    io:fwrite("Welcome to the My MadLib!\n"),
    io:fwrite("\n"),
    {ok, Name} = io:read("Enter your name: "),
    io:format("Thank you for entering your ~s\n", [Name]),

    io:format("Enter story type: \n"),
    io:format("- Happy\n"),
    io:format("- Sad\n"),
    {ok, TypeOfStory} = io:read(" : "),
    chooseStoryType(list_to_atom(TypeOfStory)).


chooseStoryType(happy) ->
    io:fwrite("You chose Happy story\n"),
    the_story();
chooseStoryType(sad) ->
    io:fwrite("You chose a Sad story\n"),
    the2_story().

    


the_story() ->
    {ok, Food} = io:read("Enter Food name: "),
    {ok, Names} = io:read("Enter another name: "),
    {ok, Adjt} = io:read("Enter an Adjective: "),
    {ok, Noun} = io:read("Enter a Noun: "),
    {ok, Sfood} = io:read("Enter a second food: "),
    {ok, Sname} = io:read("Enter a second name: "),
    {ok, Snoun} = io:read("Enter a second Noun: "),
    {ok, Verb} = io:read("Enter a Verb: "),
    {ok, Sverb} = io:read("Enter a second verb: "),
    {ok, Tverb} = io:read("Enter a third verb: "),
    


    io:fwrite("It was ~s day at school,\n 
and ~s was super ~s for lunch. \n 
But when you went outside to eat, \n
a ~s stole your ~s! ~s \n
chased the ~s all over school.\n
 She ~s, ~s, and \n
~s through the playground. \n
Then she tripped on her ~s and \n
 the ~s escaped! Luckily ~s's \n
friends were willing to share their ~s with her.", [Food, Names, Adjt, Noun, Sfood, Sname, Snoun, Verb, Sverb, Tverb, Snoun, Noun, Names, Food]).

the2_story() ->
    {ok, Food} = io:read("Enter Food name: "),
    {ok, Names} = io:read("Enter another name: "),
    {ok, Place} = io:read("Enter an Adjective: "),
    {ok, Verb} = io:read("Enter a Verb: "),
     {ok, Namef} = io:read("Enter another name: "),
    {ok, Splace} = io:read("Enter a second place: "),
    {ok, Carname} = io:read("Enter a Carname: "),


    io:fwrite("Once upon a time there lived a very sad banana named ~s. \n
lived in a in ~s. He was sad because he had no friends,\n
but then he thought, How am I going to get friends \n
if I don't go looking for ? I am going to go out and look for some ~s.\n
So put on his to ~s people and went out to . He was walking \n
around when he met a nice lady banana called ~s. She said, \n
Hello, my name is ~s. Do you want to go to ~s, and go on the ~s? said, \n
OK, If you will be my friend. Yes! She replied. So ~s and ~s became good friends and wasn't sad anymore.\n
Later on they got mugged, beaten, shot and an accident. The End!", [Names, Place, Food, Verb, Namef, Namef, Splace, Carname, Names, Namef]).

thankYou() ->
    io:fwrite("Thank you for playing the game!\n").
    