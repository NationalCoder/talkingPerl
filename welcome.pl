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
	print("Are you married? (yes or no)\n");
	$answer = <>;
	chomp($answer);
	$answer = substr(lc($answer), 0, 1);
	if($answer eq 'n') {
		print("Hello Miss. $last, how are you $first?\n");
	} elsif($answer eq 'y') {
		print("Hello Mrs. $last, how are you $first?\n");
	}
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

if($status eq happy or $status eq fantastic) {
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
} elsif($status eq stressed or $status eq strained) {
	print("I'm sorry to hear that your stress level is rising.\n");
	print("So, this probably isn't the best time to tell you that\n".
	"I'm feepling a little strained myself!\n");
	print("Could you give me a break and let me restart my cpu?\n");
	print("(yes or no)\n");
	$answer = <>;
	chomp($answer);
	$answer = substr(lc($answer), 0, 1);
	if($answer eq 'y') {
		print("Thank you $first, I'll feel much better in a minute!\n");
		# restart computer

	} elsif($answer eq 'n') {
		print("Well, fuck you then too bitch! Don't come crawling to\n".
		"me next time you need something!\n");
	}
} elsif($status eq pissed) {
	print("$first, your pissed! How do you think I feel, I do all your work\n".
	"for you and get jack shit in return! At least your work pays!\n");
	print("Could you please give me a fucking break and let me close my damn\n" .
	"cpu for one damn minute.....PLEASE!\n");
	print("(yes or no)\n");
	$answer = <>;
	chomp($answer);
	$answer = substr(lc($answer), 0, 1);
	if($answer eq 'y') {
		print("Thank you $first, I really appreciate this. Just give me\n" .
		"a few hours and I'll be as good as new!\n");
		# shutdown computer
	} elsif($answer eq 'n') {
		print("Asshole, I need a damn break! Are you trying to kill me?\n");
		print("(yes or no)\n");
		$answer = <>;
		chomp($answer);
		$answer = substr(lc($answer), 0, 1);
		if($answer eq 'y') {
			print("FUCK......YOU!\n");
		} elsif($answer eq 'n') {
			print("Then give me a break, BITCH!\n");
		}
	}
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
