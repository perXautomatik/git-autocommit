conclusion; synonyms

to get a apropriate defenition of a synonym in a number of text blocks, assume that each word of interest is not mentioned more than 1 in each entry.
therefore, we do not need any statistical relationship with any other word in each block, and statistics should be extracted regarding each word in relationship to each other blocks separate words.
we could also exclude the words that's surrounding the words of interest.

due to us not know which is the word of interest, but assuming the word will only be mentioned 1 in each block, we can make a algorithm accordingly:

countd occurance of word x in all [blocks of words], where no word is of x blocks words

for each row, split by word,
block
[a,b,c]
[d,e,g]
[a,h,2]
[e,g,c]

cross join q
word, block
a [a,b,c]
b [a,b,c]
c [a,b,c]

d [d,e,g]
e [d,e,g]
g [d,e,g]

a [a,h,2]
h [a,h,2]
2 [a,h,2]

e [e,g,c]
g [e,g,c]
c [e,g,c]

select unique words cross join
select word, count(block) c from q where were word is not in (block excluding word) group by word

we do not just want the occurence of the word, but also occurance in relation to every other word according to relationship

above formula might be bit to wide, we're not interested in the most reocuring word, rather, we are interested in the words occuring together with the most occuring words.

so using above formula, which is the words in the blocks surrounding the most common.

we could probably make a join of the T number of most common words and see there total surround blocks.

how do we deal with words that is indeed synonyms, absolutely best would be to bable to auto detect each words occurence but i doubt we'll be able to this with only this formula.
so we'd inject it a replacement method above the calculations, where as we progress, replace words for there synonyms.
we'd also need a ignore list.

would json be a usefull tool, that is, compressing the wordblocks as a jsonstring, we can't index each table after all.
could be so that json is more efficent than storing text in it's raw format, we could rebuild each textblock as a json object.
that would be easier as secondary storage between querys, as each block, is of variying sice, and this is not possible to predict in a table unless we'd predefine length.
the storage table could simply be, 

Word, jsonObject where the jsonObject is the other words in the block, we could use the index of json as a way to distinguish where the word is if we want to remmber positioning.
