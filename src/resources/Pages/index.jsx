var requestOptions = {
    method: "GET",
    redirect: "follow",
};

fetch("http://ergast.com/api/f1/circuits.json", requestOptions)
    .then((response) => response.text())
    .then((result) =>
        console.log("result", JSON.parse(result).MRData.CircuitTable.Circuits)
    )
    .catch((error) => console.log("error", error));

//http://localhost:8000/api/circuits
fetch("/api/circuits", requestOptions)
    .then((response) => response.text())
    .then((result) => console.log("result", result))
    .catch((error) => console.log("error", error));

export default function index() {
    return (
        <>
            <p>res: </p>
        </>
    );
}
