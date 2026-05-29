# ONCF-ROBOTFRAMEWORK

Automated end-to-end tests for the ONCF booking flows using Robot Framework.

## Summary

This repository contains Robot Framework test suites, resources, and test data used to verify the booking flow end-to-end (E2E).

## Navigation

- [Prerequisites](#prerequisites)
- [Quick setup](#quick-setup)
- [Technologies](#technologies)
- [Run tests](#run-tests)
- [Project structure](#project-structure)
- [Reporting](#reporting)


## Prerequisites

- Python 3.8 or newer
- pip
- (optional) virtualenv or venv

See [requirements.txt](requirements.txt) for Python package dependencies.

## Quick setup

Run the following to create a virtual environment and install dependencies:

```bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

## Technologies

The table below highlights the main technologies used in this project, the pinned versions (see `requirements.txt` for full details), and a small badge/icon for quick visual reference.

| Technology | Version | Icon |
|---|---:|---|
| Python | 3.8+ | ![Python](https://img.shields.io/badge/Python-3.8%2B-3776AB?logo=python&logoColor=white) |
| Robot Framework | 7.4.2 | ![Robot Framework](https://img.shields.io/badge/Robot--Framework-7.4.2-FF6C37?logo=robotframework&logoColor=white) |
| pabot | 5.2.2 | ![pabot](https://img.shields.io/badge/pabot-5.2.2-4c1) |
| Robot DataDriver | 1.11.2 | ![DataDriver](https://img.shields.io/badge/DataDriver-1.11.2-6f42c1) |
| Robot SeleniumLibrary | 6.9.0 | ![SeleniumLibrary](https://img.shields.io/badge/SeleniumLibrary-6.9.0-1486b5) |
| selenium | 4.44.0 | ![Selenium](https://img.shields.io/badge/selenium-4.44.0-43b02a?logo=selenium&logoColor=white) |

Reference: see [requirements.txt](requirements.txt) for the full dependency list and exact versions used in CI/local runs.


## Run tests

- Run the main E2E suite (single process):

```bash
robot Tests/E2E_Booking.robot
```

- Run tests in parallel with `pabot` (example 4 processes):

```bash
pabot --processes 4 Tests/E2E_Booking.robot
```

- Save results to the `Results/` folder explicitly:

```bash
robot -d Results -o Results/output.xml -r Results/report.html -l Results/log.html Tests/E2E_Booking.robot
```

After running with `pabot` you can find per-process outputs under `Results/pabot_results/`.

## Project structure

- [requirements.txt](requirements.txt) — Python dependencies
- Data/ — test data files (e.g. `TestingData.csv`)
- Resources/ — Robot Framework resource files (keywords, locators, page objects)
  - [Resources/Common.resource](Resources/Common.resource)
  - [Resources/Locators.resource](Resources/Locators.resource)
  - [Resources/Pages/](Resources/Pages/) — page-specific resource files (e.g. `LoginPage.resource`, `CheckoutPage.resource`)
- Tests/ — Robot test suites (e.g. [Tests/E2E_Booking.robot](Tests/E2E_Booking.robot))
- Scenarios/ — human-readable scenario descriptions (e.g. [Scenarios/Book_A_Ticket_E2E.md](Scenarios/Book_A_Ticket_E2E.md))
- Results/ — generated logs, reports, and `pabot` outputs

## Data and test design

- Primary test data is in `Data/TestingData.csv` and is consumed by the suites.
- Page-oriented keywords and locators are implemented under `Resources/Pages/` to separate UI concerns from test logic.

## Reporting

- After test runs, open `Results/report.html` for a human-readable report. Raw Robot outputs are in `Results/output.xml` and `Results/log.html`.
- Pabot creates a `Results/pabot_results/` subfolder with per-process outputs when run in parallel.
