% InClass1: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github
%% numbers vs strings
% Run the following two sections. explain why one gives a sensible result and the other doesn't
% Can you explain the value of the variable b? 
x = 1; 
y = x + x
%%
a = '1';
b = a+a

%Answer: In all coding languages in order for the computer to understand
%letters/strings/characters/symbols, every letter/character/symbol is assigned to a numeric
%value. The one to one assignment of a number to a symbol gave rise to the
%ASCII code. So, that means that the value that is assigned to the variable 'b' is the sum of
%the ASCII value for character "1".

%% concatenation
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 

x2 = [x x]

a2 = [a a]

x2b = [x; x]

%Answer: In Matlab both space and comma are being used interchangably in
%matrices/arrays. So the x2 variable will simply be an array of 1x2 with
%numeric values. The variable 'a' was a character, so the 'a2' variable
%seems to be the concatenation of the two strings without any space in
%between them. Lastly, the variable 'x2b' instead of space/comma had a
%semicolon. Semicolon defines different rows in a matrix. That is why
%variable 'x2b' is a matrix 2x1.

%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
a = 1; b =2; 

a == b
a = b;
a == b

%Answer: The symbol '=' is used to assign values to variables and the symbol '==' is used to compare the values of two variables 
%returning a boolean value (TRUE = 1, FALSE = 0) after comparison is done. In the above commands initially 'a' has a value of 1 
%and 'b' a value of 2. Then, after comparison of the two values the result is FALSE, as 1 is different than 2. Later the code 
%reassigns new values to the variables 'a' and 'b', both the value 2. Then after a new comparison, as expected the result is TRUE, 
%as 2 is equal to 2.

%explain the results of the following operations:
a = [1, 2, 4];
b = [0,2,7];
a == b

%Answer: The variables 'a' and 'b' are considered matrices/arrays of 1x3. So by using the comparison symbol == , the expression returns 
%the boolean result of the comparison between the 1st column of 'a' with the 1st column of 'b', the 2nd of 'a' with 2nd of 'b' and 3rd 
%column of 'a' with the third column of 'b'.

%explain why this gives an error:

b = [2, 3];
a == b

% Answer: From the previous chunk of code, variable 'a' has already a value, 
%it is an array of 1x3. Now the code reassigns a value to the
%variable 'b', making it a matrix/array 1x2

%explain why this does not give an error
%broadcasting
b = 2;
a == b 

%Answer: It is possible to compare one number only with every column of a matrix,
%but not two matrices with different dimensions,as previously shown. 
%%  : operator 
%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;


%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
1:20
[oneToTen, oneToTen+10]

%Answer: The 1:20 will return simply an array from 1 to 20. The difference with the
%[oneToTen, oneToTen+10] is that it will merge the oneToTen array with the
%same array after adding the value '10' to each of its terms/columns. The
%result is the same for this example.


% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

% 1. even numbers from two to twenty

twoToTwenty = 2:2:20
twoToTwenty = oneToTen*2

% 2. odd numbers from one to nineteen

oneTo19een = 1:2:19
oneTo19een = oneToTen*2 -1

% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)

twentyToTwo = fliplr(2:2:20)
twentyToTwo = fliplr(oneToTen)*2

% explain why the fliplr function no longer works and find a different
% matlab function that performs an equivalent function on the same array
oneToTen = oneToTen';
fliplr(oneToTen)

%Answer:  The symbol ' at the end of a matrix transposes it. This time the 
%matrix rows were transposed into one column. Aparrently the function
%fliplr works only for terms of a row and cannot applied for columns. This
%function can reverse also multiple rows of a matrix at the same time. It
%follows one small example I tried.

oneTofive = 1:5
twoTosix = 2:6

oneT = [oneTofive;twoTosix]

%oneT =

%     1     2     3     4     5
%     2     3     4     5     6

oneT = fliplr(oneT)

%oneT =
%
%     5     4     3     2     1
%     6     5     4     3     2

%To continue the function that can flip an array/column up to down is the
%"flipud()". 
oneToTen = oneToTen';
flipud(oneToTen)

%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

%Answer: Function "ones()" creates matrices that are symmetrical for the
%assigneg value of columns/rows. So ones(2) creates a matrix 2x2, and
%ones(2,4) a matrix of 2x4  ( two rows and 4 columns). All the values in
%the matrix cells are 1. 

%explain the output of these two commands:
m1*m2
m1.*m2

%Answer: In the first multiplication it is enough to follow the simple
%algebraic rules of multiplication of matrices. Each element of every row
%of the first matrix should be multiplied by each element of the first row
%of the second matrix and the new matrix will have in the new position the
%sum of the multiplication values. So 1x2 + 1x2 for the 1,1 cell of the new
%matrix...Same happens for every row element.
%The 'm1.' is called "dot multiplication" and basically means to multiply
%each element of the first matrix with its corresponding element of the
%other matrix, without following the rules of matrix multiplication.


%explain this command:
m2./m1

%Answer: This commands is similar to the dot multiplication but is division
%instead. So each elemen of the first matrix is divided by each
%corresponding element of the second matrix.


%extra credit: explain why this command gives a warning:
m2/m1

%Answer: In algebre the matrix division is the multiplication of the first
%matrix with the inverse of the second matrix. These two matrices are
%square matrices and normally only square matrices have inverse form.
%Though here these matrices have also Determinant=0 , and that means that
%an inverse matrix cannot be defined. So any operation that involves the
%inverse of m1 cannot be performed.

%% access particular elements and groups of elements

%define a random matrix

rand_nums = rand(5);

%explain what is being done in each of the following lines

rand_nums(2,3)

%This returns the element of the second row and 3rd column

rand_nums(2:4,3)

%This returns the elements of the second to fourth row and only the column 3 of these rows. 

rand_nums(1:2,3:4)

%This returns the elements from column 3 to 4 and from the first to second
%row.

rand_nums(:,2)

%This returns all the rows but only their second column.

rand_nums(1,:)

%This returns the first row but all the columns.

rand_nums(:,[1 3 5])

%This last one returns all the rows but only the columns 1, 3 and 5.