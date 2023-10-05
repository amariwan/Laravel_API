<?php
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Circuit;

class CircuitController extends Controller
{
    public function index()
    {
        $circuits = Circuit::all();
        return response()->json($circuits);
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'circuitId' => 'required|string',
            'url' => 'required|string',
            'circuitName' => 'required|string',
            'location' => 'required|json',
        ]);

        $circuit = Circuit::create($data);
        return response()->json($circuit, 201);
    }

    public function update(Request $request, $id){
        $data = $request->validate([
            'circuitId' => 'string',
            'url' => 'string',
            'circuitName' => 'string',
            'location' => 'json',
        ]);

        $circuit = Circuit::findOrFail($id);
        $circuit->update($data);

        return response()->json($circuit);
    }

    public function destroy($id)
    {
        $circuit = Circuit::findOrFail($id);
        $circuit->delete();

        return response()->json(null, 204);
    }
}
