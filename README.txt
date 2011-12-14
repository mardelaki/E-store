Report of Project 3


Για το τρίτο project μας ζητήθηκε να υλοποιήσουμε ένα shopping cart με δύο διαφορετικούς τρόπους στο ένα με jsp που περιέχει scriptlets και στο άλλο ένα jsp που χρησιμοποιεί javaBean και δεν περιέχει scriptlets .
Στην πρώτη περίπτωση έφτιαξα ένα jsp που περιέχει όλη τη λογική υλοποιημένο με scriptlets.
Στη δεύτερη περίπτωση έφτιαξα ένα javaBean που αντιπροσωπεύει το basket του χρήστη και ένα jsp που δεν περιέχει scriptlets.Προκειμένου να μην χρησιμοποιήσω scriptlets χρησιμοποίησα EL expressions και jsp actions.Ακόμα προκειμένου να σώσω τα cookies και για να τα διαχειριστώ χρησιμοποίησα custom tag libraries που προσφέρει ο Apache.
Ώς αναφορά χρησιμοποίησα κυρίως το βιβλίο του μαθήματος και το site του apache το http://tomcat.apache.org/taglibs/index.html.
Και στις δύο περιπτώσεις αποθηκεύονται cookies στο χρήστη έτσι ώστε το καλάθι του να είναι πάντα ενημερωμένο ακόμα και αν ο χρήστης κλείσει το browser και τον ξανανοίξει.

Ο κώδικας βρίσκεται και στο Github : https://github.com/mardelaki/

URL(για τη πρώτη περίπτωση):http://texwww.inf.uth.gr:8080/~delimpal/ScripletStore.jsp

URL(για τη δεύτερη περίπτωση):http://texwww.inf.uth.gr:8080/~delimpal/ScriptFree.jsp