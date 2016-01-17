/**
  * Opérateur binaire de soustraction.
  *
  * @author	
  * @version	$Revision$
  */
public class Soustraction implements OperateurBinaire {

	public <R> R accepter(VisiteurExpression<R> visiteur) {
		return visiteur.visiterSoustraction(this);
	}

}
