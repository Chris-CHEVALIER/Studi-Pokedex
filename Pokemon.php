<?php

class Pokemon {
    private $id;
    private $numero;
    private $nom;
    private $description;
    private $type1;
    private $type2;

    /* $data = [
        "id" => 1,
        "numero" => 1,
        "nom" => "Bulbizarre",
        // ...
    ]*/
    
    public function __construct(array $data) {
        $this->hydrate($data);
    }

    public function hydrate(array $data): void {
        foreach ($data as $key => $value) {
            $method = "set" . ucfirst($key);
            if (method_exists($this, $method)) {
                $this->$method($value);
            }
        }
    }

    // Getters & setters
    public function getId(): int {
        return $this->id;
    }

    /**
     * Set the value of id
     *
     * @return  self
     */ 
    public function setId(int $id): Pokemon {
        $this->id = $id;
        return $this;
    }

    /**
     * Get the value of numero
     */ 
    public function getNumero(): int {
        return $this->numero;
    }

    /**
     * Set the value of numero
     *
     * @return  self
     */ 
    public function setNumero($numero) {
        if (is_int($numero) < 800) {
            $this->numero = $numero;
        }
        return $this;
    }

    /**
     * Get the value of nom
     */ 
    public function getNom()
    {
        return $this->nom;
    }

    /**
     * Set the value of nom
     *
     * @return  self
     */ 
    public function setNom($nom)
    {
        $this->nom = $nom;
        return $this;
    }

    /**
     * Get the value of description
     */ 
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set the value of description
     *
     * @return  self
     */ 
    public function setDescription($description) {
        if (is_string($description) && strlen($description) > 5 && strlen($description) < 1000) {
            $this->description = $description;
        }
        return $this;
    }

    /**
     * Get the value of type1
     */ 
    public function getType1() {
        return $this->type1;
    }

    /**
     * Set the value of type1
     *
     * @return  self
     */ 
    public function setType1($type1) {
        $this->type1 = $type1;
        return $this;
    }

    /**
     * Get the value of type2
     */ 
    public function getType2() {
        return $this->type2;
    }

    /**
     * Set the value of type2
     *
     * @return  self
     */ 
    public function setType2($type2) {
        $this->type2 = $type2;

        return $this;
    }
}