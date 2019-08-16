(require 'usocket)

(defparameter my-stream (usocket:socket-stream (usocket:socket-connect #(127 0 0 1) 4321)))
