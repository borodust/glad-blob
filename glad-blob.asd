(asdf:defsystem glad-blob
  :author "Pavel Korolev"
  :description "GLAD foreign library collection"
  :license "MIT"
  :defsystem-depends-on (:bodge-blobs-support)
  :class :bodge-blob-system
  :libraries (((:darwin :x86-64) "libglad.dylib.bodged" "x86_64/")
              ((:darwin :x86) "libglad.dylib.bodged" "x86/")
              ((:unix (:not :darwin) :x86-64) "libglad.so.bodged" "x86_64/")
              ((:unix (:not :darwin) :x86) "libglad.so.bodged" "x86/")
              ((:unix (:not :darwin) :ppc64 :big-endian) "libglad.so.bodged" "ppc64/")
              ((:unix (:not :darwin) :ppc64 :little-endian) "libglad.so.bodged" "ppc64le/")
              ((:windows :x86-64) "libglad.dll.bodged" "x86_64/")
              ((:windows :x86) "libglad.dll.bodged" "x86/")))
