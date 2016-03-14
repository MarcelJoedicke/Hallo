#Ubuntu Linux Container
FROM ubuntu:14.04

#Installieren von Git
RUN apt-get install -y git

#Zur Ausführung von hello world, muss ich danach zuerst das repo ziehen dafür brauche ich den Token (lange Zahl da vor dem Doppelpunkt. Hinten kommt die Installationslokation
#RUN git clone -b docker https://4367027f94c72935b64cbd45e846e765899fbc2e:marcelmaxjoedicke@github.com/MarcelJoedicke/Hallo.git /myapp/
RUN git clone https://github.com/MarcelJoedicke/Hallo.git

#als nächstes müsste ich kompilieren, dafür erstelle ich die hallo.o Datei aus der hallo.cpp Datei und Kompiliere Sie zu einen ausführbaren Programm
RUN g++ hallo.cpp -o Hallo

Dann versuche ich die Datei auszuführen
RUN ./versuch
