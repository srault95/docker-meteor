Docker pour Meteor build et run
===============================

A la racine de votre projet Meteor (au même niveau que le répertoire .meteor)

1. Créez un simple fichier Dockerfile avec la ligne suivante:

::

   FROM srault95/docker-meteor:onbuild

2. Compilez votre vm Docker:

::

   docker build -t mon-image .
   
3. Créer et lancez la nouvelle image:

::

   # Si vous n'avez pas déjà un serveur mongodb:
   docker run -d --name mongodb mongo mongod \
      --storageEngine wiredTiger --wiredTigerDirectoryForIndexes --directoryperdb --noauth
   
   docker run -d --name mon-meteor --link mongodb:mongodb \
      -p 80:80 \
      -e ROOT_URL=http://MON_IP_PUBLIC:80 \ 
      -e MONGO_URL=mongodb://mongodb/MA_DB_MONGO \ 
      mon-image
   
