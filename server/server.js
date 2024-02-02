const express = require('express');
const sqlite3 = require('sqlite3');
const bodyParser = require('body-parser');

const app = express();
app.use(bodyParser.json());

const db = new sqlite3.Database('../database/projets6-bdd.bd', (err) => {
    if (err) {
      console.error('Error connecting to the database:', err.message);
    } else {
      console.log('Connected to the database');
    }
  });


//Route de vérification 
app.get('/', (req, res) => {
    res.send('Bienvenue sur la page d\'accueil');
  });


//Route de vérification d'appel
app.get('/test',(req,res) =>{
    db.all('SELECT * FROM TEST', (err, test)=>{
        if(err){
            console.log('Il y a eu une erreur:', err.message);
            res.status(500).json({error: 'Internal server error'});
            return;
        }
        res.json(test);
    });
});

//----------------------------------------------------------------------------------------//


// Port d'écoute du serveur Express
const port = process.env.PORT || 3001;

// Écoute du serveur sur le port spécifié
app.listen(port, () => {
    console.log(`Le serveur fonctionne sur le port http://localhost:${port}`);
});