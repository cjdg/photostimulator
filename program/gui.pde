/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void button1_click1(GButton source, GEvent event) { //_CODE_:btnMandar:574260:
int temp;
temp=int(fldIntensidad.getValueI()/39);
println(temp);
  port.write(temp);
  delay(fldDuracion.getValueI());
  port.write(0);
} //_CODE_:btnMandar:574260:

public void btnConectar_click(GButton source, GEvent event) { //_CODE_:btnConectar:482894:
  port = new Serial(this,Serial.list()[lstPuertos.getSelectedIndex()]);
} //_CODE_:btnConectar:482894:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  lblIntensidad = new GLabel(this, 30, 90, 120, 20);
  lblIntensidad.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblIntensidad.setText("Intensidad:");
  lblIntensidad.setOpaque(false);
  fldIntensidad = new GTextField(this, 170, 90, 60, 20, G4P.SCROLLBARS_NONE);
  fldIntensidad.setOpaque(true);
  lblDuracionPulso = new GLabel(this, 20, 130, 140, 20);
  lblDuracionPulso.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblDuracionPulso.setText("Duracion pulso (ms):");
  lblDuracionPulso.setOpaque(false);
  fldDuracion = new GTextField(this, 170, 130, 60, 20, G4P.SCROLLBARS_NONE);
  fldDuracion.setOpaque(true);
  btnMandar = new GButton(this, 300, 100, 80, 30);
  btnMandar.setText("Estimular");
  btnMandar.addEventHandler(this, "button1_click1");
  lstPuertos = new GDropList(this, 170, 50, 90, 80, 3, 10);
  lstPuertos.setItems(Serial.list(), 0);
  lblPuerto = new GLabel(this, 80, 50, 80, 20);
  lblPuerto.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblPuerto.setText("Puerto:");
  lblPuerto.setOpaque(false);
  btnConectar = new GButton(this, 300, 50, 80, 30);
  btnConectar.setText("Conectar");
  btnConectar.addEventHandler(this, "btnConectar_click");
}

// Variable declarations 
// autogenerated do not edit
GLabel lblIntensidad; 
GTextField fldIntensidad; 
GLabel lblDuracionPulso; 
GTextField fldDuracion; 
GButton btnMandar; 
GDropList lstPuertos; 
GLabel lblPuerto; 
GButton btnConectar; 