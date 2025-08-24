# Complete API Documentation

This document provides comprehensive API documentation for all endpoints in the
Monks-BE application.

## Base URL

All API endpoints are relative to the base URL of your application.

## Common Query Parameters

### Base Window Query Parameters

Most KPI endpoints accept these common parameters:

| Parameter    | Type     | Required | Description                         | Example                           |
| ------------ | -------- | -------- | ----------------------------------- | --------------------------------- |
| `machineIds` | string[] | No       | Array of machine UUIDs to filter by | `?machineIds=uuid1,uuid2`         |
| `startTime`  | ISO8601  | Yes      | Start time for the query window     | `?startTime=2025-01-01T00:00:00Z` |
| `endTime`    | ISO8601  | Yes      | End time for the query window       | `?endTime=2025-01-31T23:59:59Z`   |

### Timeseries Query Parameters

Extends base window parameters:

| Parameter  | Type   | Required | Description                         | Example                          |
| ---------- | ------ | -------- | ----------------------------------- | -------------------------------- |
| `interval` | string | No       | Time bucket interval (default: 30m) | `?interval=5m` or `?interval=1h` |

## Core Entity Controllers

### Plants

**Base Path:** `/plants`

| Method | Endpoint      | Description      | Path Params | Query Params | Response  |
| ------ | ------------- | ---------------- | ----------- | ------------ | --------- |
| GET    | `/plants`     | Get all plants   | None        | None         | `Plant[]` |
| GET    | `/plants/:id` | Get plant by ID  | `id` (UUID) | None         | `Plant`   |
| POST   | `/plants`     | Create new plant | None        | None         | `Plant`   |
| PUT    | `/plants/:id` | Update plant     | `id` (UUID) | None         | `Plant`   |
| DELETE | `/plants/:id` | Delete plant     | `id` (UUID) | None         | `void`    |

**Plant Entity:**

```json
{
  "plant_id": "uuid",
  "plant_name": "string",
  "location": "string | null",
  "created_at": "ISO8601",
  "updated_at": "ISO8601"
}
```

### Units

**Base Path:** `/units`

| Method | Endpoint                | Description        | Path Params      | Query Params | Response |
| ------ | ----------------------- | ------------------ | ---------------- | ------------ | -------- |
| GET    | `/units`                | Get all units      | None             | None         | `Unit[]` |
| GET    | `/units/:id`            | Get unit by ID     | `id` (UUID)      | None         | `Unit`   |
| GET    | `/units/plant/:plantId` | Get units by plant | `plantId` (UUID) | None         | `Unit[]` |
| POST   | `/units`                | Create new unit    | None             | None         | `Unit`   |
| PUT    | `/units/:id`            | Update unit        | `id` (UUID)      | None         | `Unit`   |
| DELETE | `/units/:id`            | Delete unit        | `id` (UUID)      | None         | `void`   |

**Unit Entity:**

```json
{
  "unit_id": "uuid",
  "plant_id": "uuid",
  "unit_name": "string",
  "created_at": "ISO8601",
  "updated_at": "ISO8601"
}
```

### Segments

**Base Path:** `/segments`

| Method | Endpoint                 | Description          | Path Params     | Query Params | Response    |
| ------ | ------------------------ | -------------------- | --------------- | ------------ | ----------- |
| GET    | `/segments`              | Get all segments     | None            | None         | `Segment[]` |
| GET    | `/segments/:id`          | Get segment by ID    | `id` (UUID)     | None         | `Segment`   |
| GET    | `/segments/unit/:unitId` | Get segments by unit | `unitId` (UUID) | None         | `Segment[]` |
| POST   | `/segments`              | Create new segment   | None            | None         | `Segment`   |
| PUT    | `/segments/:id`          | Update segment       | `id` (UUID)     | None         | `Segment`   |
| DELETE | `/segments/:id`          | Delete segment       | `id` (UUID)     | None         | `void`      |

**Segment Entity:**

```json
{
  "segment_id": "uuid",
  "unit_id": "uuid",
  "segment_name": "string",
  "created_at": "ISO8601",
  "updated_at": "ISO8601"
}
```

### Lines

**Base Path:** `/lines`

| Method | Endpoint                    | Description          | Path Params        | Query Params | Response |
| ------ | --------------------------- | -------------------- | ------------------ | ------------ | -------- |
| GET    | `/lines`                    | Get all lines        | None               | None         | `Line[]` |
| GET    | `/lines/:id`                | Get line by ID       | `id` (UUID)        | None         | `Line`   |
| GET    | `/lines/segment/:segmentId` | Get lines by segment | `segmentId` (UUID) | None         | `Line[]` |
| POST   | `/lines`                    | Create new line      | None               | None         | `Line`   |
| PUT    | `/lines/:id`                | Update line          | `id` (UUID)        | None         | `Line`   |
| DELETE | `/lines/:id`                | Delete line          | `id` (UUID)        | None         | `void`   |

**Line Entity:**

```json
{
  "line_id": "uuid",
  "segment_id": "uuid",
  "line_name": "string",
  "created_at": "ISO8601",
  "updated_at": "ISO8601"
}
```

### Machines

**Base Path:** `/machines`

| Method | Endpoint                   | Description            | Path Params                                 | Query Params | Response    |
| ------ | -------------------------- | ---------------------- | ------------------------------------------- | ------------ | ----------- |
| GET    | `/machines`                | Get all machines       | None                                        | None         | `Machine[]` |
| GET    | `/machines/:id`            | Get machine by ID      | `id` (UUID)                                 | None         | `Machine`   |
| GET    | `/machines/line/:lineId`   | Get machines by line   | `lineId` (UUID)                             | None         | `Machine[]` |
| GET    | `/machines/status/:status` | Get machines by status | `status` (active\|inactive\|decommissioned) | None         | `Machine[]` |
| POST   | `/machines`                | Create new machine     | None                                        | None         | `Machine`   |
| PUT    | `/machines/:id`            | Update machine         | `id` (UUID)                                 | None         | `Machine`   |
| DELETE | `/machines/:id`            | Delete machine         | `id` (UUID)                                 | None         | `void`      |

**Machine Entity:**

```json
{
  "machine_id": "uuid",
  "line_id": "uuid",
  "machine_name": "string",
  "status": "active | inactive | decommissioned",
  "created_at": "ISO8601",
  "updated_at": "ISO8601"
}
```

### Products

**Base Path:** `/products`

| Method | Endpoint                     | Description                   | Path Params | Query Params       | Response    |
| ------ | ---------------------------- | ----------------------------- | ----------- | ------------------ | ----------- |
| GET    | `/products`                  | Get all products              | None        | None               | `Product[]` |
| GET    | `/products/:id`              | Get product by ID             | `id` (UUID) | None               | `Product`   |
| GET    | `/products/cycle-time/above` | Get products above cycle time | None        | `seconds` (number) | `Product[]` |
| POST   | `/products`                  | Create new product            | None        | None               | `Product`   |
| PUT    | `/products/:id`              | Update product                | `id` (UUID) | None               | `Product`   |
| DELETE | `/products/:id`              | Delete product                | `id` (UUID) | None               | `void`      |

**Product Entity:**

```json
{
  "product_id": "uuid",
  "product_name": "string",
  "cycle_time_seconds": "number",
  "created_at": "ISO8601",
  "updated_at": "ISO8601"
}
```

### Operators

**Base Path:** `/operators`

| Method | Endpoint                    | Description            | Path Params      | Query Params | Response     |
| ------ | --------------------------- | ---------------------- | ---------------- | ------------ | ------------ |
| GET    | `/operators`                | Get all operators      | None             | None         | `Operator[]` |
| GET    | `/operators/:id`            | Get operator by ID     | `id` (UUID)      | None         | `Operator`   |
| GET    | `/operators/plant/:plantId` | Get operators by plant | `plantId` (UUID) | None         | `Operator[]` |
| GET    | `/operators/email/:email`   | Get operator by email  | `email` (string) | None         | `Operator`   |
| POST   | `/operators`                | Create new operator    | None             | None         | `Operator`   |
| PUT    | `/operators/:id`            | Update operator        | `id` (UUID)      | None         | `Operator`   |
| DELETE | `/operators/:id`            | Delete operator        | `id` (UUID)      | None         | `void`       |

**Operator Entity:**

```json
{
  "operator_id": "uuid",
  "plant_id": "uuid",
  "operator_name": "string",
  "email": "string",
  "created_at": "ISO8601",
  "updated_at": "ISO8601"
}
```

### Shifts

**Base Path:** `/shifts`

| Method | Endpoint             | Description                | Path Params | Query Params | Response        |
| ------ | -------------------- | -------------------------- | ----------- | ------------ | --------------- |
| GET    | `/shifts`            | Get all shifts             | None        | None         | `Shift[]`       |
| GET    | `/shifts/:id`        | Get shift by ID            | `id` (UUID) | None         | `Shift`         |
| GET    | `/shifts/active/now` | Get currently active shift | None        | None         | `Shift \| null` |
| POST   | `/shifts`            | Create new shift           | None        | None         | `Shift`         |
| PUT    | `/shifts/:id`        | Update shift               | `id` (UUID) | None         | `Shift`         |
| DELETE | `/shifts/:id`        | Delete shift               | `id` (UUID) | None         | `void`          |

**Shift Entity:**

```json
{
  "shift_id": "uuid",
  "shift_name": "string",
  "start_time": "ISO8601",
  "end_time": "ISO8601",
  "created_at": "ISO8601",
  "updated_at": "ISO8601"
}
```

## KPI Controllers

### Machine Output KPI

**Base Path:** `/api/v1/processed/output`

| Method | Endpoint      | Description                   | Path Params | Query Params                                   | Response                   |
| ------ | ------------- | ----------------------------- | ----------- | ---------------------------------------------- | -------------------------- |
| GET    | `/aggregate`  | Get aggregated output metrics | None        | Base + `groupBy` (machine\|product\|workOrder) | `OutputAggregateResponse`  |
| GET    | `/timeseries` | Get time-series output data   | None        | Base + Timeseries + `filterBy`, `filterValue`  | `OutputTimeseriesResponse` |

**Query Parameters:**

- `groupBy`: `'machine' | 'product' | 'workOrder'` (default: 'machine')
- `filterBy`: `'productId' | 'workOrderId'` (optional)
- `filterValue`: string (required if filterBy is set)

**Response Structure:**

```json
{
  "startTime": "ISO8601",
  "endTime": "ISO8601",
  "groupBy": "string",
  "results": [
    {
      "machineId": "uuid",
      "totalOutputQty": "number",
      "rejectedOutputQty": "number",
      "goodOutputQty": "number",
      "yieldRatio": "number"
    }
  ]
}
```

### Machine Performance KPI

**Base Path:** `/api/v1/processed/performance`

| Method | Endpoint      | Description                        | Path Params | Query Params                        | Response                        |
| ------ | ------------- | ---------------------------------- | ----------- | ----------------------------------- | ------------------------------- |
| GET    | `/aggregate`  | Get aggregated performance metrics | None        | Base + `groupBy` (machine\|product) | `PerformanceAggregateResponse`  |
| GET    | `/timeseries` | Get time-series performance data   | None        | Base + Timeseries                   | `PerformanceTimeseriesResponse` |

**Query Parameters:**

- `groupBy`: `'machine' | 'product'` (default: 'machine')

### Machine Availability KPI

**Base Path:** `/api/v1/processed/availability`

| Method | Endpoint              | Description                           | Path Params        | Query Params               | Response                         |
| ------ | --------------------- | ------------------------------------- | ------------------ | -------------------------- | -------------------------------- |
| GET    | `/aggregate`          | Get aggregated availability metrics   | None               | Base + `groupBy` (machine) | `AvailabilityAggregateResponse`  |
| GET    | `/timeseries`         | Get time-series availability data     | None               | Base + Timeseries          | `AvailabilityTimeseriesResponse` |
| GET    | `/machine/:machineId` | Get availability for specific machine | `machineId` (UUID) | Base + Timeseries          | `MachineAvailabilityResponse`    |
| GET    | `/summary`            | Get availability summary              | None               | Base                       | `AvailabilitySummaryResponse`    |

**Query Parameters:**

- `groupBy`: `'machine'` (default: 'machine')

### Machine Status

**Base Path:** `/api/v1/processed/machine-status`

| Method | Endpoint      | Description                           | Path Params | Query Params      | Response                          |
| ------ | ------------- | ------------------------------------- | ----------- | ----------------- | --------------------------------- |
| GET    | `/aggregate`  | Get aggregated machine status metrics | None        | Base              | `MachineStatusAggregateResponse`  |
| GET    | `/timeseries` | Get time-series machine status data   | None        | Base + Timeseries | `MachineStatusTimeseriesResponse` |

### Machine OEE KPI

**Base Path:** `/api/v1/kpis/oee`

| Method | Endpoint      | Description                | Path Params | Query Params      | Response                |
| ------ | ------------- | -------------------------- | ----------- | ----------------- | ----------------------- |
| GET    | `/aggregate`  | Get aggregated OEE metrics | None        | Base              | `OeeAggregateResponse`  |
| GET    | `/timeseries` | Get time-series OEE data   | None        | Base + Timeseries | `OeeTimeseriesResponse` |

### Machine OOE KPI

**Base Path:** `/api/v1/kpis/ooe`

| Method | Endpoint      | Description                | Path Params | Query Params      | Response                |
| ------ | ------------- | -------------------------- | ----------- | ----------------- | ----------------------- |
| GET    | `/aggregate`  | Get aggregated OOE metrics | None        | Base              | `OoeAggregateResponse`  |
| GET    | `/timeseries` | Get time-series OOE data   | None        | Base + Timeseries | `OoeTimeseriesResponse` |

### Machine Asset Utilization KPI

**Base Path:** `/api/v1/processed/asset-utilization`

| Method | Endpoint      | Description                              | Path Params | Query Params                        | Response                             |
| ------ | ------------- | ---------------------------------------- | ----------- | ----------------------------------- | ------------------------------------ |
| GET    | `/aggregate`  | Get aggregated asset utilization metrics | None        | Base + `groupBy` (machine\|product) | `AssetUtilizationAggregateResponse`  |
| GET    | `/timeseries` | Get time-series asset utilization data   | None        | Base + Timeseries                   | `AssetUtilizationTimeseriesResponse` |

**Query Parameters:**

- `groupBy`: `'machine' | 'product'` (default: 'machine')

### Machine Total Asset Utilization KPI

**Base Path:** `/api/v1/processed/total-asset-utilization`

| Method | Endpoint      | Description                                    | Path Params | Query Params                        | Response                                  |
| ------ | ------------- | ---------------------------------------------- | ----------- | ----------------------------------- | ----------------------------------------- |
| GET    | `/aggregate`  | Get aggregated total asset utilization metrics | None        | Base + `groupBy` (machine\|product) | `TotalAssetUtilizationAggregateResponse`  |
| GET    | `/timeseries` | Get time-series total asset utilization data   | None        | Base + Timeseries                   | `TotalAssetUtilizationTimeseriesResponse` |

**Query Parameters:**

- `groupBy`: `'machine' | 'product'` (default: 'machine')

### Machine Quality KPI

**Base Path:** `/api/v1/processed/quality`

| Method | Endpoint      | Description                    | Path Params | Query Params                        | Response                    |
| ------ | ------------- | ------------------------------ | ----------- | ----------------------------------- | --------------------------- |
| GET    | `/aggregate`  | Get aggregated quality metrics | None        | Base + `groupBy` (machine\|product) | `QualityAggregateResponse`  |
| GET    | `/timeseries` | Get time-series quality data   | None        | Base + Timeseries                   | `QualityTimeseriesResponse` |

**Query Parameters:**

- `groupBy`: `'machine' | 'product'` (default: 'machine')

## System Endpoints

### App Controller

**Base Path:** `/`

| Method | Endpoint   | Description           | Path Params | Query Params | Response         |
| ------ | ---------- | --------------------- | ----------- | ------------ | ---------------- |
| GET    | `/`        | Get hello message     | None        | None         | `string`         |
| GET    | `/healthz` | Health check endpoint | None        | None         | `HealthResponse` |

**Health Response:**

```json
{
  "status": "ok",
  "timestamp": "ISO8601"
}
```

## Common Response Patterns

### Aggregate Response Pattern

```json
{
  "startTime": "ISO8601",
  "endTime": "ISO8601",
  "groupBy": "string",
  "results": [
    {
      "key": "string",
      "value": "number"
    }
  ]
}
```

### Timeseries Response Pattern

```json
{
  "startTime": "ISO8601",
  "endTime": "ISO8601",
  "interval": "string",
  "series": [
    {
      "machineId": "string",
      "data": [
        {
          "timestamp": "ISO8601",
          "value": "number"
        }
      ]
    }
  ]
}
```

## Error Responses

All endpoints return standard HTTP status codes and may return error responses
in this format:

```json
{
  "statusCode": "number",
  "message": "string",
  "error": "string",
  "timestamp": "ISO8601"
}
```

## Authentication & Authorization

Currently, the API endpoints do not require authentication. All endpoints are
publicly accessible.

## Rate Limiting

No rate limiting is currently implemented.

## Data Types

- **UUID**: Standard UUID v4 format
- **ISO8601**: ISO 8601 timestamp format (e.g., `2025-01-01T00:00:00.000Z`)
- **Boolean**: `true` or `false`
- **Number**: Integer or floating-point numbers
- **String**: UTF-8 encoded strings
- **Array**: JSON arrays
- **Object**: JSON objects

## Notes

1. All timestamps are in UTC timezone
2. Machine IDs, Product IDs, and other entity IDs are UUIDs
3. KPI endpoints support flexible time windows and machine filtering
4. Timeseries data can be aggregated at different intervals (5m, 30m, 1h, etc.)
5. Most KPI endpoints support grouping by machine, product, or work order
6. The API follows RESTful conventions with consistent response structures
