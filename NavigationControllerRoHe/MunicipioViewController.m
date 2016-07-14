//
//  MunicipioViewController.m
//  NavigationControllerRoHe
//
//  Created by RobertoHerrera on 6/27/16.
//  Copyright © 2016 RobertoHerrera. All rights reserved.
//

#import "MunicipioViewController.h"
#import <Google/Analytics.h>

@interface MunicipioViewController ()

@end

@implementation MunicipioViewController


-(void)viewWillAppear:(BOOL)animated{
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker set:kGAIScreenName value:@"MunicipioViewController"];
    [tracker send:[[GAIDictionaryBuilder createScreenView] build]];
}

/*********************************************************************************************/
#pragma mark - Initialization methods
/*********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    self.lblMunicipio.text          = self.destinationMunicpio;
    self.coorLatitude = 20.6947103;
    self.coorLongitude = -103.4203145;
    self.coorZoom = 17;
    
    /////////////////// For COLIMA ///////////////////////
           if ([self.destinationMunicpio  isEqual: @"Armeria"]) {
               self.coorLatitude = 18.936994;
               self.coorLongitude = -103.964762;
               self.coorZoom = 14;
               self.imgMunicipio.image   = [UIImage imageNamed:@"armeria.png"];
        self.lblMunicipioDes.text   = @"AAlgunos aseguran que la localidad de Armería, fundada cerca del río del mismo nombre, fue en un principio, un lugar en el cual se armaban barcos, para posteriormente convertirse en un destacamento de guardias virreinales que otorgaban garantías a los viajeros que transitaban por el “Camino Real” hacia Manzanillo o de regreso a la ciudad de Colima; con el paso del tiempo, ahí se instaló una hacienda que se convirtió en el punto de partida de la localidad que hoy conocemos como Armería, que ya era reconocida en la región como uno de los sitios de gran tradición gracias a Cuyutlán y por ser una zona productora de sal a partir de la época precolombina.";
    
    }else  if ([self.destinationMunicpio  isEqual: @"Colima"]) {
        self.coorLatitude = 19.246694;
        self.coorLongitude = -103.725065;
        self.coorZoom = 12;
        self.imgMunicipio.image   = [UIImage imageNamed:@"colima.png"];
        self.lblMunicipioDes.text   = @"Al llegar a La Ciudad de las Palmeras, como se le conoce a Colima, encuentras un paraíso donde exuberantes paisajes y majestuosos volcanes, son los principales protagonistas. Si a ello le añadimos una riqueza cultural, histórica y la siempre hospitalidad de su gente, entonces nos encontramos ante uno de los estados más interesantes y bellos de México. El nombre del estado y la ciudad de Colima ha sido interpretado erróneamente en distintas ocasiones. Las últimas investigaciones dicen que Colima, viene del náhuatl Acolman, que significa lugar donde tuerce el agua o lugar donde hace recodo el río. El territorio de Colima, del que casi tres cuartas partes de superficie están cubiertas por montañas y colinas, queda comprendido dentro de una derivación de la Sierra Madre del Sur, que se compone de cuatro sistemas montañosos.";
    
    }else  if ([self.destinationMunicpio  isEqual: @"Comala"]) {
        self.imgMunicipio.image   = [UIImage imageNamed:@"comala.png"];
        self.lblMunicipioDes.text   = @"Los pobladores más antiguos del territorio de Comala se establecieron ahí hace más de 3,000 años. En esta zona florecieron importantes culturas como la olmeca, náhuatl (500 a. C.), tolteca, chichimeca (durante la época clásica, 1154-1429 d. C.), y la tarasca, que era la principal cultura a la llegada de los españoles, lo cual es muestra de la diversidad cultural que desde siempre ha existido en dicho lugar. En 1527, la región de Comala fue dada en Encomienda a Bartolomé López; durante más de 300 años este lugar fue considerado como asentamiento, rancho, pueblo, e incluso a principios del siglo dieciocho, aún se denominaba República de Indios, con un gobernador como autoridad. Fue hasta 1820 que Comala se constituyó como ayuntamiento, de conformidad con la Constitución de la Monarquía Española, y el primer alcalde fue Don Cayetano Pizarro. En 1857, Comala fue erigido como ayuntamiento, de acuerdo a la nueva Constitución Republicana.";
    
    }else  if ([self.destinationMunicpio  isEqual: @"Manzanillo"]) {
        self.coorLatitude = 19.114060;
        self.coorLongitude = -104.337654;
        self.coorZoom = 12;
        self.imgMunicipio.image   = [UIImage imageNamed:@"manzanillo.jpg"];
        self.lblMunicipioDes.text   = @"Manzanillo es la ciudad cabecera del municipio de nombre homónimo y limita al norte con Minatitlan al este con Coquimatlán y Armería; al sur, está el océano Pacífico; y al oeste y noroeste limita con el estado de Jalisco. Es el puerto comercial más importante de México. La ciudad se compone de 9 localidades Tapeixtles, Salagua, Naranjo, Colomos, Miramar, Valle, Brisas, Santiago y Manzanillo (también conocido como Manzanillo centro). Gracias al desarrollo comercial de México, Manzanillo que se proyecta como un puerto comercial y destino turístico está experimentado un rápido crecimiento en infraestructura y atracciones turísticas. Se ubica 4 metros sobre el nivel del mar en el malecón.";
    
    }else  if ([self.destinationMunicpio  isEqual: @"Tecoman"]) {
        self.imgMunicipio.image   = [UIImage imageNamed:@"tecoman.png"];
        self.lblMunicipioDes.text   = @"Se dice que el territorio de Tecomán estaba habitado por el grupo indígena de los tecos, en el pueblo de Caxitlán, que constituían el grupo más fuerte de la región en el que se supone radicaba el hueytlatoani (cacique dominante). Precisamente en Tecomán los conquistadores tuvieron su primer asentamiento, de lo cual queda registro en la Cédula Real fechada el 26 de junio de 1530, mediante la cual la Reina de España otorgaba armas para Jerónimo López y que a la letra dice: Los españoles tuvisteis un gran encuentro de batalla con los naturales que estaban retraídos y fortalecidos en la dicha población de Tucumán (Tecomán), en el cual dicho término se fundó una villa de españoles, en la cual residisteis.";
    }

    /////////////////// For DURANGO ///////////////////////
    if ([self.destinationMunicpio  isEqual: @"Durango"]) {
        self.imgMunicipio.image   = [UIImage imageNamed:@"guadalajara.png"];
        self.lblMunicipioDes.text   = @"Durango es una descripcion dummy";
        
    }else  if ([self.destinationMunicpio  isEqual: @"Gomez Palacios"]) {
        self.imgMunicipio.image   = [UIImage imageNamed:@"guadalajara.png"];
        self.lblMunicipioDes.text   = @"Gomez Palacios des";
        
    }else  if ([self.destinationMunicpio  isEqual: @"Lerdo"]) {
        self.imgMunicipio.image   = [UIImage imageNamed:@"guadalajara.png"];
        self.lblMunicipioDes.text   = @"Lerdo des";
        
    }else  if ([self.destinationMunicpio  isEqual: @"Mezquital"]) {
        self.imgMunicipio.image   = [UIImage imageNamed:@"guadalajara.png"];
        self.lblMunicipioDes.text   = @"Mezquital";
        
    }else  if ([self.destinationMunicpio  isEqual: @"Pueblo Nuevo"]) {
        self.imgMunicipio.image   = [UIImage imageNamed:@"guadalajara.png"];
        self.lblMunicipioDes.text   = @"Pueblo Nuevo des";
    }
    /////////////////// For JALISCO ///////////////////////
    if ([self.destinationMunicpio  isEqual: @"Guadalajara"]) {
        self.coorLatitude = 20.679045;
        self.coorLongitude = -103.340381;
        self.coorZoom = 12;
        self.imgMunicipio.image   = [UIImage imageNamed:@"guadalajara.png"];
        self.lblMunicipioDes.text   = @"Guadalajara es una ciudad y municipio mexicano, capital y urbe más poblada del estado de Jalisco. Se localiza en el occidente de México, al centro de Jalisco, en la zona geográfica conocida como Valle de Atemajac. Es la segunda megapólis más poblada del país con 1.495.182 8 habitantes y forma parte de la denominada zona metropolitana de Guadalajara, junto con otros 8 municipios, considerada la segunda área urbana más grande en México y la décima en América Latina, con 4.625.000 habitantes. ";
        
    }else  if ([self.destinationMunicpio  isEqual: @"Mascota"]) {
        self.imgMunicipio.image   = [UIImage imageNamed:@"mascota.gif"];
        self.lblMunicipioDes.text   = @"Mascota, Es un municipio de Jalisco, México y pueblo mágico. El nombre de Mascota proviene del Teco Amaxacotlán Mazacotla, que en español significa: lugar de venados y culebras. Fue un cacicazgo, el cual tenía bajo su jurisdicción a los poblados de Talpa, El Tuito y Chacala. Durante la conquista recibió el nombre de Valle de los venados o Valle de Banderas. Sus pobladores eran indígenas tecos.";
        
    }else  if ([self.destinationMunicpio  isEqual: @"Ameca"]) {
        self.imgMunicipio.image   = [UIImage imageNamed:@"ameca.png"];
        self.lblMunicipioDes.text   = @"Ameca es una ciudad del Estado de Jalisco, México; cabecera del municipio del mismo nombre y sede de la Región Valles. El municipio de Ameca se encuentra ubicado en el occidente centro del Estado de Jalisco, De acuerdo a las últimas cifras del INEGI, en 2010 el municipio de Ameca tenía una población de 57,340 habitantes y una superficie de 837,81 km².Ameca posee un clima templado-cálido, es un destacado centro agrícola, comercial y ganadero.";
        
    }else  if ([self.destinationMunicpio  isEqual: @"Colotlan"]) {
        self.imgMunicipio.image   = [UIImage imageNamed:@"colotlan.png"];
        self.lblMunicipioDes.text   = @"El municipio de Colotlán está ubicado en la región norte del estado de Jalisco, en México. El municipio cubre un área de aproximadamente 505 kilómetros cuadrados y queda ubicado en las coordenadas 22°12′N 103°18′O, a una altura de 1,720 metros sobre el nivel del mar.";
        
    }else  if ([self.destinationMunicpio  isEqual: @"Puerto Vallarta"]) {
        self.coorLatitude = 20.651101;
        self.coorLongitude = -105.228953;
        self.coorZoom = 12;
        self.imgMunicipio.image   = [UIImage imageNamed:@"puertovallarta.png"];
        self.lblMunicipioDes.text   = @"PEn el 2005, el municipio contaba con una población estimada de 307,107 personas, así como cinco millones de turistas anuales. Junto con el municipio de Bahía de Banderas del estado de Nayarit, conforma la Zona Metropolitana de Puerto Vallarta siendo así la segunda más poblada de ambos estados. Asimismo el municipio es uno de los que registran mayor crecimiento poblaciónal en el estado, inclusive mayor que los municipios centrales. Es la segunda zona económica más importante del estado de Jalisco y el tercer puerto más importante de México. Actualmente, es uno de los lugares más visitados del país.";
    }
    /////////////////// For SINALOA ///////////////////////
    if ([self.destinationMunicpio  isEqual: @"Culiacan"]) {
        self.coorLatitude = 24.805064;
        self.coorLongitude = -107.402257;
        self.coorZoom = 12;
        self.imgMunicipio.image   = [UIImage imageNamed:@"culican.png"];
        self.lblMunicipioDes.text   = @"El municipio de Culiacán se encuentra localizado en el centro del Estado de Sinaloa y se extiende desde la costa en el Golfo de California hasta los límites con Durango en la Sierra Madre Occidental, tiene una extensión territorial de 4 758 kilómetros cuadrados que representan el 8.16% de la extensión total del estado, siendo el tercero por su territorio.";
        
    }else  if ([self.destinationMunicpio  isEqual: @"Guasave"]) {
        self.imgMunicipio.image   = [UIImage imageNamed:@"guasave.png"];
        self.lblMunicipioDes.text   = @"Guasave es uno de los 18 municipios del Estado de Sinaloa, México. Es el único municipio sinaloense mayoritariamente llano, las únicas elevaciones del municipio son islas o cerros costeros que rodean las bahías de Navachiste y San Ignacio. Antes de la llegada de los españoles, este municipio estuvo habitado po indígenas guasaves. El nombre proviene de un vocablo del grupo etnolingüístico cáhita, viene de guaza: cerco, tierra de labor, sementera o tierra entre milpas, y ave, al lado o junto, el topónimo significaría entonces lugar junto a los campos o donde hay tierras de labor cita requerida]. Es conocido en el estado como El corazón agrícola de México";
        
    }else  if ([self.destinationMunicpio  isEqual: @"Mazatlan"]) {
        self.coorLatitude = 23.245197;
        self.coorLongitude = -106.412893;
        self.coorZoom = 12;
        self.imgMunicipio.image   = [UIImage imageNamed:@"mazatlan.jpg"];
        self.lblMunicipioDes.text   = @"El municipio de Mazatlán es uno de los municipios del estado mexicano de Sinaloa, se localiza en la parte sur del estado, entre los meridianos 105º46’23 y 106º30’51  O, y entre los paralelos 23°04'25 y 23°50'22 de latitud norte.Además del Océano Pacífico, dos ríos bañan este municipio: el Río Quelite al norte y el Río Presidio al sur. Su cabecera municipal es la ciudad de Mazatlán. De acuerdo los decretos municipales 9 y 4 de 1979 y 1981, respectivamente, la ciudad de Mazatlán fue fundada oficialmente el 14 de mayo de 1531  Según el censo del 2015 tenía una población de 502,547 habitantes";
        
    }else  if ([self.destinationMunicpio  isEqual: @"Guamuchil"]) {
        self.imgMunicipio.image   = [UIImage imageNamed:@"guamuchil.gif"];
        self.lblMunicipioDes.text   = @"Guamúchil es una ciudad del estado de Sinaloa, México y es la quinta ciudad más grande de la entidad. Igualmente, es la cabecera del municipio de Salvador Alvarado y de la región llamada valle del Évora, que incluye los municipios de Mocorito, Angostura y parte de Badiraguato. Se caracteriza por ser una ciudad de actividad terciaria y de rápido crecimiento. Aunque no nació en este lugar, Pedro Infante creció en Guamúchil y siempre mencionaba que era de esta ciudad.";
        
    }else  if ([self.destinationMunicpio  isEqual: @"Los Mochis"]) {
        self.imgMunicipio.image   = [UIImage imageNamed:@"losmochis.jpg"];
        self.lblMunicipioDes.text   = @"Los Mochis (del cáhita: mochim, pl. de mochic, 'tortuga de tierra') es una ciudad del noroeste de México, ubicada en el estado de Sinaloa, es la tercera en orden de importancia en el estado y es la cabecera del municipio de Ahome. Es uno de los emporios agrícolas más grandes del país.Los Mochis es un lugar estratégico del Noroeste del Pacífico Mexicano y forma parte fundamental del Corredor Barrancas del Cobre-Mar de Cortés, por tal motivo es considerado la puerta de entrada a las Barrancas del Cobre.";
    }
    /////////////////// For NAYARIT ///////////////////////
    if ([self.destinationMunicpio  isEqual: @"Acaponeta"]) {
        self.imgMunicipio.image   = [UIImage imageNamed:@"guadalajara.png"];
        self.lblMunicipioDes.text   = @"Acaponeta es una descripcion dummy";
        
    }else  if ([self.destinationMunicpio  isEqual: @"Bahia de Banderas"]) {
        self.imgMunicipio.image   = [UIImage imageNamed:@"guadalajara.png"];
        self.lblMunicipioDes.text   = @"Bahia de Banderas des";
        
    }else  if ([self.destinationMunicpio  isEqual: @"Tuxpan"]) {
        self.imgMunicipio.image   = [UIImage imageNamed:@"guadalajara.png"];
        self.lblMunicipioDes.text   = @"Tuxpan des";
        
    }else  if ([self.destinationMunicpio  isEqual: @"Ixtlan del Rio"]) {
        self.imgMunicipio.image   = [UIImage imageNamed:@"guadalajara.png"];
        self.lblMunicipioDes.text   = @"Ixtlan del Rio";
        
    }else  if ([self.destinationMunicpio  isEqual: @"Tepic"]) {
        self.imgMunicipio.image   = [UIImage imageNamed:@"guadalajara.png"];
        self.lblMunicipioDes.text   = @"Tepic des";
    }
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*********************************************************************************************/
#pragma mark - Navigation
/*********************************************************************************************/
// In a storyboard-based application, you will often want to do a little preparation before navigation

- (IBAction)btnPressedViewLocation:(id)sender {
    [self performSegueWithIdentifier:@"MapsViewController" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.destinationViewController isKindOfClass:[MapsViewController class]]) {
        MapsViewController *destinationState    = [segue destinationViewController];
        destinationState.locationLatitude       = self.coorLatitude;
        destinationState.locationLongitude      = self.coorLongitude;
        destinationState.locationZoom           = self.coorZoom;
        
    }
}


@end
