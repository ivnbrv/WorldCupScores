<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Matches extends Model
{
  	protected $table 		= 'match';	
	protected $primaryKey 	= 'matchid';
	public $timestamps 		= false;

	public function local()
	{
		return $this->hasOne('App\Teams', 'teamid', 'localid');
	}

	public function away()
	{
		return $this->hasOne('App\Teams', 'teamid', 'awayid');
	}

	public function results()
	{
		return $this->hasOne('App\Results', 'matchid');
	}

	public function group()
	{
		return $this->hasOne('App\Groups', 'groupid');
	}

	public function penalties()
	{
		return $this->hasOne('App\Penalties', 'matchid');
	}


	public function scopeSchedule($query, $data){

		$result = [];

		if(isset($data['faseid'])){
			$query = $query->where('faseid', $data['faseid']);
		} 

		if(isset($data['date'])){
			$query = $query->whereDate('date', '=', $data['date']);
		}else{
			
			//proximos juegos

		}




		return $query->with(['local','away','group','results','penalties'])->get();





	}


}


