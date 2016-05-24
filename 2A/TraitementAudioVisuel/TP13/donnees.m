clear;
close all;
taille_ecran = get(0,'ScreenSize');
L = taille_ecran(3);
H = taille_ecran(4);

chemin = '/mnt/n7fs/ens/tp_gasparini/images/';

fichier = [chemin 'pensees'];
s = whos('-file',fichier);
nb_images_pensees = length(s);
load(fichier);
figure('Name','Images de pensees','Position',[0,0,0.33*L,0.5*H]);
nb_lignes_affichage = floor(sqrt(nb_images_pensees));
nb_colonnes_affichage = ceil(sqrt(nb_images_pensees));
for i = 1:nb_images_pensees
	subplot(nb_lignes_affichage,nb_colonnes_affichage,i);
	imagesc(eval(['pe' num2str(i)]));
	title(['Pensee ' num2str(i)]);
	axis equal;
	axis off;
end

fichier = [chemin 'oeillets'];
s = whos('-file',fichier);
nb_images_oeillets = length(s);
load(fichier);
figure('Name','Images d''oeillets','Position',[0.33*L,0,0.33*L,0.5*H]);
nb_lignes_affichage = floor(sqrt(nb_images_oeillets));
nb_colonnes_affichage = ceil(sqrt(nb_images_oeillets));
for i = 1:nb_images_oeillets
	subplot(nb_lignes_affichage,nb_colonnes_affichage,i);
	imagesc(eval(['oe' num2str(i)]));
	title(['Oeillet ' num2str(i)]);
	axis equal;
	axis off;
end

fichier = [chemin 'chrysanthemes'];
s = whos('-file',fichier);
nb_images_chrysanthemes = length(s);
load(fichier);
figure('Name','Images de chrysanthemes','Position',[0.66*L,0,0.33*L,0.5*H]);
nb_lignes_affichage = floor(sqrt(nb_images_chrysanthemes));
nb_colonnes_affichage = ceil(sqrt(nb_images_chrysanthemes));
for i = 1:nb_images_chrysanthemes
	subplot(nb_lignes_affichage,nb_colonnes_affichage,i);
	imagesc(eval(['ch' num2str(i)]));
	title(['Chrysantheme ' num2str(i)]);
	axis equal;
	axis off;
end
drawnow;

save donnees ;