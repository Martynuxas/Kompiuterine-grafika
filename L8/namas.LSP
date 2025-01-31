(defun c:namas()
  (setq taskas1 (getpoint "\nIveskite piesinio apatinio kairiojo kampo koordinates (x,y):") )
  (command "osnap" "off" )
  (setq taskas2 (list (+ (car taskas1) 100) (+ (cadr taskas1)60)))
  (setq taskas3 (list (- (car taskas1) 30) (+ (cadr taskas1)20)))
  (setq taskas4 (list (car taskas3) (+ (cadr taskas3)60)))
  (setq taskas5 (list (+(car taskas4)30) (- (cadr taskas4)20)))
  (setq taskas6 (list (+(car taskas4)15) (+ (cadr taskas4)30)))
  (setq taskas7 (list (+(car taskas6)100) (cadr taskas6)))
  (setq kaminas1 (list (+(car taskas6)50) (cadr taskas6)))
  (setq kaminas2 (list (+(car kaminas1)8) (+(cadr kaminas1)15)))
  (setq langas1 (list (+(car taskas1)10) (+(cadr taskas1)10)))
  (setq langas11 (list (+(car langas1)20) (+(cadr langas1)25)))
  
  (setq langas2 (list (+(car taskas1)90) (+(cadr taskas1)10)))
  (setq langas22 (list (-(car langas2)20) (+(cadr langas2)25)))
  
  (setq durys1 (list (+(car taskas1)42.5) (cadr taskas1)))
  (setq durys11 (list (+(car durys1)15) (+(cadr durys1)35)))
  
  (setq stovas1 (list (-(car taskas1)20) (cadr taskas1)))
  (setq stovas11 (list (-(car stovas1)2) (+(cadr stovas1)20)))
  
  (setq stovoc (list (+(car stovas11)1) (+(cadr stovas11)5)))
  
  (setq tvoros1 (list (+(car taskas1)110) (cadr taskas1)))
  (setq tvoros2 (list (car tvoros1) (+(cadr tvoros1)30)))
  
  (command "COLOR" 117)
  (command "lweight" 0.5 "")
  (command "RECTANGLE" taskas1 taskas2 "")
  (command "LINE" taskas1 taskas3 "")
  (command "LINE" taskas3 taskas4 "")
  (command "LINE" taskas4 taskas5 "")
  
  (command "LINE" taskas4 taskas6 "")
  (command "LINE" taskas5 taskas6 "")
  (command "LINE" taskas6 taskas7 "")
  (command "LINE" taskas7 taskas2 "")
  (command "RECTANGLE" kaminas1 kaminas2 "")
  (command "RECTANGLE" langas1 langas11 "")
  (command "RECTANGLE" langas2 langas22 "")
  (command "RECTANGLE" durys1 durys11 "")
  (command "CIRCLE" stovoc 5 "")
  (command "RECTANGLE" stovas1 stovas11 "")
  (command "RECTANGLE" stovas2 stovas22 "")
  )