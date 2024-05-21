<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreCarRequest;
use App\Models\Car;
use App\Models\Rental;
use Illuminate\Http\Request;

class CarController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
       $cars = Car::all();
       return response()->json(["data" => $cars]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreCarRequest $request)
    {
        $car = new Car($request->all());
        $car->save();
        return response()->json($car, 201);
    }

    /**
     * controlling the renting datas
     */
    public function rent(Request $request, string $id)
    {
 //megkeressük az autot id alapján
        //utána ha nem létezik az auto 404-el térünk vissza
        $car = Car::find($id);
        if (is_null($car)) {
            return response()->json(["message" => "A megadott autó nem található a $id -val "], 404);
        }
        // foglalások lekérdezése , ahol
        $rentals = Rental::where([
            //id a megadott car_id = id
            ["car_id", $id],
            //kezdő dátum kisebb vagy egyenlő mint az aktuális dátum
            ["start_date", "<=", date("Y-m-d")],
            //a vége dátum a mai dátummal azonos vagy nagyobb
            ["end_date", ">", date("Y-m-d")],
        ])->get();

        //ha rentals
        if (!$rentals->isEmpty()) {
            return response()->json(["message"=>"Jelenleg az autó ki van kölcsönözve"], 409);
        }
        //ha nincs kiadva létrehozzuk a foglalást
        $rental = new Rental();
        $rental->car_id = $id;
        $rental->start_date = date("Y-m-d");
        $rental->end_date = date("Y-m-d", strtotime("+1 week"));
        $rental->save();

        return response()->json($rental, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
