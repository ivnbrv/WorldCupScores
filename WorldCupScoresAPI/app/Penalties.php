<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Penalties extends Model
{
  	protected $table 		= 'penalty';	
	protected $primaryKey 	= 'matchid';
	public $timestamps 		= false;

	public function match()
	{
		return $this->belongsTo('App\Matches', 'matchid');
	}


}
