<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Management</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; background-color: #f4f4f9; }
        h1 { color: #333; }
        ul { list-style-type: none; padding: 0; }
        li { background: white; margin: 10px 0; padding: 15px; border-radius: 5px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); }
    </style>
</head>
<body>

    <h1>Patients List</h1>
    <button onclick="fetchPatients()">Load Patients</button>
    <ul id="patient-list"></ul>

    <script>
        async function fetchPatients() {
            const listElement = document.getElementById('patient-list');
            listElement.innerHTML = '<li>Loading...</li>';

            try {
                // Calling the backend API running on port 8087
                const response = await fetch('http://localhost:8087/patients');

                if (!response.ok) {
                    throw new Error(`HTTP error! Status: ${response.status}`);
                }

                const patients = await response.json();
                listElement.innerHTML = ''; // Clear loading message

                if (patients.length === 0) {
                    listElement.innerHTML = '<li>No patients found.</li>';
                    return;
                }

                // Loop through patients and add them to the DOM
                patients.forEach(patient => {
                    const li = document.createElement('li');
                    // Adjust 'patient.name' or 'patient.id' based on your actual backend object structure
                    li.textContent = `ID: ${patient.id || 'N/A'} - Name: ${patient.name || 'Unknown'}`;
                    listElement.appendChild(li);
                });

            } catch (error) {
                console.error('Error fetching patients:', error);
                listElement.innerHTML = `<li style="color: red;">Failed to load patients. Is the backend running on port 8087?</li>`;
            }
        }
    </script>
</body>
</html>