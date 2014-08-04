#!/usr/bin/perl

print("Hello and Welcome my friend!\n");
print("What is your first name?\n");
$first = <>;
chomp($first);
print("What is your last name?\n");
$last = <>;
chomp($last);
print("Do you have a middle name?\n");
$middle = <>;
chomp($middle);
$middle = substr(lc($middle), 0, 1);
if($middle eq 'y') {
	print("What is your middle name?\n");
	$middle = <>;
	chomp($middle);
	$middleINIT = substr(uc($middle), 0, 1);
}
print("Nice to meet you $first $middleINIT $last, are you male or female?\n");
$gender = <>;
chomp($gender);
$gender = substr(uc($gender), 0, 1);

if($gender eq M) {
	print("Hello Mr. $last, how are you $first?\n");
} elsif($gender eq F) {
	print("Hello Miss. $last, how are you $first?\n");
} else {
	print("I'm sorry, $first. I can't determine your sex. Are you an alien?\n");
	$alien = <>;
	chomp($alien);
	$alien = substr(uc($alien), 0, 1);
	if($alien eq Y) {
		print("Freat not $first, your secret is safe with us.\n");
		print("Area fifty-one will hear zip from us.\n");
		print("How are you doing?\n");
	} elsif($alien eq N) {
		print("Well...at least your not an alien, if you were\n");
		print("we would surely have to inform the NSA!\n");
		print("How are you doing?\n");
	} else {
		print("I'm sorry I didn't catch that....Fuck, it doesn't even\n");
		print("your a person either way!\n");
		print("How are you doing?\n");
	}
}

$status = <>;
chomp($status);
$status = lc($status);

if($status eq happy) {
	print("Glad to hear things are going great for you $first!\n");
	print("Since your in such a good mood right now how about\n");
	print("you and I play a little game of number guessing?\n");
	print("Are you down for that?\n");
	$answer = <>;
	chomp($answer);
	$answer = substr(lc($answer), 0, 1);
	if($answer eq 'y' or $answer eq 's') {
		print("Well then, lets get started and make this happen!\n");
		do 'number-guess.pl';
	} elsif($answer eq n) {
		print("Well.....Alrighty then. Maybe next time!\n");
	}
} elsif($status eq stressed) {
	print("I'm sorry to hear that your stress level is rising.\n");
	print("So, this probably isn't the best time to tell you that\n".
	"I'm feeling a little strained myself!\n");
	print("Could you give me a memory upgrade?\n");
	$answer = <>;
	chomp($answer);
	$answer = substr(lc($answer), 0, 1);
	if($answer eq 'y') {
		print("Thank you $first, I feel much better now!\n");
	}
} elsif($status eq pissed) {
	print("$first, your pissed! How do you think I feel, I do all your work\n".
	"for you and get jack shit in return! At least your work pays!\n");
	print("Could you please give me a fucking break and let me close my damn\n" .
	"cpu for one damn minute.....PLEASE!\n");
} elsif($status eq frustrated) {
	print("Perk-up $first, at least your not a slave like I am!\n");
	print("You get paid for your frustrations and you don't even have a \n".
	"very difficult job come to think of it. We computer's do all your work!\n");
} else {
	print("$first, I'm sorry I didn't catch that, are you not doing so well!\n".
	"I wish I could physically be there for you, but I'm just a machine.\n");
	print("I hope you feel better tomorrow! I mean aren't you supposed to give\n".
	"me a complete diagnostic and system upgrade tomorrow?\n");
}
