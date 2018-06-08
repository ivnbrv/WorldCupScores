<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Results extends Model
{
  	protected $table 		= 'match_result';	
	protected $primaryKey 	= 'matchid';
	public $timestamps 		= false;

	public function match()
	{
		return $this->belongsTo('App\Matches', 'matchid');
	}


}
