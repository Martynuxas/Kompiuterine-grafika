(defun C:laikrodis()
  (setq taskas1 (getpoint "\n Nurodykite centra"))
  (command "circle" taskas1 30 "")
  (setq taskas2 (list (-(car taskas1)0.8) (-(cadr taskas1)26.6)))
  (setq taskas3 (list (+(car taskas1)0.8) (-(cadr taskas1)25)))
  (setq taskas4 (list (car taskas1) (+(cadr taskas1)21)))
  (setq taskas5 (list (car taskas1) (+(cadr taskas1)24)))
  (setq taskas6 (list (car taskas1) (-(cadr taskas1)16)))
  (setq taskas7 (list (car taskas1) (-(cadr taskas1)19)))
  (command "lweight" 0.4)
  (command "pline" taskas1 "w" 1.3 1.3 taskas4 "w" 3 0 taskas5"")
  (command "pline" taskas1 "w" 1.3 1.3 taskas6 "w" 3 0 taskas7"")
  (command "rectang" taskas2 taskas3 "")
  (command "arraypolar" taskas2 "" taskas1 "i" 12 "" "")
 )