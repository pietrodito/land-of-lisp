(output-stream-p *standard-output*)
(write-char #\x *standard-output*)
(read-char *standard-input*)

(with-open-file (file "data.txt" :direction :output)
  (print "some data" file))

(with-open-file (file "data.txt" :direction :input)
  (read file))

(let ((animal-noises '((dog . woof)
                       (cat . meow))))
  (with-open-file (my-stream "animal-noises.txt" :direction :output)
    (print animal-noises my-stream)))

(with-open-file (my-stream "animal-noises.txt" :direction :input)
  (read my-stream)))
