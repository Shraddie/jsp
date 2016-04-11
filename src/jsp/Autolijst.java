package jsp;

import java.util.ArrayList;

/**
 * Klasse met een lijst van auto's
 * 
 * @author piet
 */
public class Autolijst {
	private ArrayList<Auto> autolijst;

	/**
	 * Constructor die de lijst aanmaakt en auto's toevoegt
	 */
	public Autolijst() {
		autolijst = new ArrayList<Auto>();
		Auto ford1 = new Auto("Ford", "Fiesta", 23999, "jsp.imgwebshop/fordfiesta.jpg");
		autolijst.add(ford1);
		Auto ford2 = new Auto("Ford", "Focus", 18995, "jsp.imgwebshop/fordfocus.jpg");
		autolijst.add(ford2);
		Auto opel1 = new Auto("Opel", "Astra", 14895, "jsp.imgwebshop/opelastra.jpg");
		autolijst.add(opel1);
		Auto opel2 = new Auto("Opel", "Insignia", 65450, "jsp.imgwebshop/opelinsignia.jpg");
		autolijst.add(opel2);
		Auto subaru1 = new Auto("Subaru", "Forester", 34750, "jsp.imgwebshop/subaruforester.jpg");
		autolijst.add(subaru1);
		Auto subaru2 = new Auto("Subaru", "Impreza", 28345, "jsp.imgwebshop/subaruimpreza.jpg");
		autolijst.add(subaru2);
		Auto mercedes1 = new Auto("Mercedes", "E 63", 110995, "jsp.imgwebshop/mercedede63.png");
		autolijst.add(mercedes1);
		Auto mercedes2 = new Auto("Mercedes", "CLA 45", 190780, "jsp.imgwebshop/mercedescla45.jpg");
		autolijst.add(mercedes2);
		Auto ferrari1 = new Auto("Ferrari", "612 GTO", 350500, "jsp.imgwebshop/ferrari612.jpg");
		autolijst.add(ferrari1);
		Auto citroen1 = new Auto("Citroen", "2CV", 459, "jsp.imgwebshop/citroen2cv.jpg");
		autolijst.add(citroen1);
		Auto mini1 = new Auto("Mini", "Cooper", 34495, "jsp.imgwebshop/minicooper.jpg");
		autolijst.add(mini1);
	}

	/**
	 * 
	 * @return geeft de lijst met auto's
	 */
	public ArrayList<Auto> getLijst() {
		return autolijst;
	}

	/**
	 * Ten behoeve van het select merk input veld
	 * 
	 * @return een lijst met alle unieke merken
	 */
	public ArrayList<String> getMerken() {
		ArrayList<String> merken = new ArrayList<String>();
		for (Auto auto : autolijst) {
			String merk = auto.getMerk();
			if (!merken.contains(merk)) {
				merken.add(merk);
			}
		}
		return merken;
	}
}
