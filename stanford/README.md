Instructions for installing the stanford dependency
=======
To use this library, follow these simple steps:

  * Download the stanford POStagger from
  * Move the files `stanford-postagger-withModel.jar` and `english-left3words-distsim.tagger` to this folder


https://gitlab.uni-koblenz.de/sgross91/pp/-/tree/master/stanford-postagger-2018-02-27


java -mx300m -classpath stanford-postagger.jar edu.stanford.nlp.tagger.maxent.MaxentTagger -model english-left3words-distsim.tagger -textFile simple-input.txt > simple-output.txt