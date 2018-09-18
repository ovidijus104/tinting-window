<?php

namespace App\Models;

use DateTime;
use PDO;

/**
 * Order model
 */
class Order extends \Core\Model
{

    /**
     * Validation error
     */
    public $errors = [];


    /**
     * Pagination property
     */
    public $per_page = 10;
    public $total_records = 0;

    /**
     * Class constructor
     *
     * @param array $data  Initial property values (optional)
     *
     * @return void
     */
    public function __construct($data = [])
    {
        foreach ($data as $key => $value) {
            $this->$key = $value;
        };
    }

    /**
     * Save the order model with the current property values
     *
     * @return boolean  True if the reservation was saved, false otherwise
     */
    public function save()
    {
        $this->validate();

        if (empty($this->errors)) {

            $date = new DateTime();

            $sql = 'INSERT INTO orders (cliant_name, cliant_surname, cliant_email, cliant_phone, car_model, arrival_date, arrival_reason, timestamp)
                    VALUES (:name, :surname, :email, :phone, :car, :arrival_date, :arrival_reason, :now)';

            $db = static::getDB();
            $stmt = $db->prepare($sql);

            $stmt->bindValue(':name', $this->name, PDO::PARAM_STR);
            $stmt->bindValue(':surname', $this->surname, PDO::PARAM_STR);
            $stmt->bindValue(':email', $this->email, PDO::PARAM_STR);
            $stmt->bindValue(':phone', $this->phone, PDO::PARAM_STR);
            $stmt->bindValue(':car', $this->car, PDO::PARAM_STR);
            $stmt->bindValue(':arrival_reason', $this->arrival_reason, PDO::PARAM_STR);
            $stmt->bindValue(':arrival_date', $this->arrival_date, PDO::PARAM_STR);
            $stmt->bindValue(':now', $date->format('Y-m-d H:i:s'), PDO::PARAM_STR);

            return $stmt->execute();
        }

        return false;
    }

    /**
     * Get all orders from database
     *
     * @return order array
     */
    public function getAll() {
        $db = static::getDB();

        $sql = 'SELECT * FROM orders';
        $stmt = $db->prepare($this->buildQuery($sql, true));
        $stmt->setFetchMode(PDO::FETCH_ASSOC);

        (isset($this->search)) ? $stmt->bindValue(':keyword', '%' . $this->search . '%', PDO::PARAM_STR) : null;
        $stmt->execute();

        return $stmt->fetchAll();

    }


    /**
     * Combile search and pagination query;
     *
     * @return query string
     */
    public function buildQuery($query, $paginate = false){
        $db = static::getDB();

        if ($paginate) {
            $query1 = $this->paging($query, $this->per_page);
            if (isset($_GET["search"])) {
                $query2 = $query . " WHERE cliant_name LIKE :keyword OR cliant_surname LIKE :keyword OR cliant_email LIKE :keyword";
                $stmt1 = $db->prepare($query2);
                $stmt1->bindValue(':keyword', '%' . $this->search . '%', PDO::PARAM_STR);
                $stmt1->execute();
                $this->total_records = $stmt1->rowCount();
                $query2 = $this->paging($query2, $this->per_page);
                return $query2;
            }
            $stmt = $db->prepare($query);
            $stmt->execute();
            $this->total_records = $stmt->rowCount();

            return $query1;
        }

    }

    /**
     * Paginate data;
     *
     * @return paginate query
     */
    public function paging($query, $data_per_Page){
            $starting_position=0;
            if(isset($_GET["page_no"]))
            {
                $starting_position=($_GET["page_no"]-1)*$data_per_Page;
            }
            $query2 = $query." limit $starting_position,$data_per_Page";
            return $query2;
    }


    /**
     * Generate data for pagination links;
     *
     * @return array of data
     */
    public function paginglink($total_no_of_records,$data_per_Page, $searchq = ''){

        $url = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
        $self = strstr($url, '?', true);

        $page_link_data = [];
        if (isset($searchq)){
            $search = '&search='.$searchq;
        }else{
            $search = '';
        }
        $page_link_data += ['search_q' => $search];

                $whole_count_Of_Pages=ceil($total_no_of_records/$data_per_Page);
                $page_link_data += ['total_pg' => $whole_count_Of_Pages];

                $current_page=1;
                if(isset($_GET["page_no"]))
                {
                    $current_page=$_GET["page_no"];
                }

                $page_link_data += ['current_pg' => $current_page];
                $page_link_data += ['first_pg' => $self.'?page_no=1'.$search];
                $page_link_data += ['url' => $self.'?page_no='];
                $page_link_data += ['last_pg' => $self.'?page_no='.$whole_count_Of_Pages.$search ];

        return $page_link_data;
    }

    /**
     * Validate current property values, adding validation error messages to the errors array property
     *
     * @return void
     */
    public function validate()
    {
        if ($this->name == '') {
            $this->errors[] = 'Vardas neįvestas';
        }
        if ($this->surname == '') {
            $this->errors[] = 'Pavardė neįvesta';
        }
        if ($this->email == '') {
            $this->errors[] = 'El. pašto adresas neįvestas';
        }
        if ($this->phone == '') {
            $this->errors[] = 'Telefono numeris neįvestas';
        }
        if ($this->car == '') {
            $this->errors[] = 'Automobilio modelis neįvestas';
        }
        if ($this->arrival_date == '') {
            $this->errors[] = 'Atvykimo data nenurodyta';
        }
        if ($this->arrival_reason == '') {
            $this->errors[] = 'Atvykimo priežastis nenurodyta';
        }
    }

}