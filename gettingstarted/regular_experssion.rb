/\d\d:\d\d:\d\d/ # a time such as 12:34:56
/Perl.*Python/	# Perl zero or more characters then Python
/Perl Python/  # Perl, a space and python
/Perl *Python/ # Perl, zero or more spaces and python
/Perl +Python/ # Perl one or more spaces and python
/Perl|s+Python/ # Perl, white space characters and then Python
/Ruby (Perl|Python)/  # Ruby a space and then either perl or python
