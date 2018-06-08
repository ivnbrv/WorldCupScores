<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Groups extends Model
{
  	protected $table 		= 'group';	
	protected $primaryKey 	= 'groupid';
	public $timestamps 		= false;

	public function match()
	{
		return $this->belongsTo('App\Matches', 'groupid');
	}


}
