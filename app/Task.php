<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    //
    public function scopeCompleted($query)
    {
        return $query->where('completed', 1);
    }

    public function scopeUnCompleted($query)
    {
        return $query->where('completed', 0);
    }
}
