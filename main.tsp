import "@typespec/http";
import "@typespec/versioning";
import "./library.tsp";

using TypeSpec.Versioning;
@versioned(Versions)
@service({
    title: "WeatherForecast Service",
})

namespace WeatherService;

enum Versions {
    v1,
    v2
}

using TypeSpec.Http;
using TypeSpec.Rest;

model WeatherForecast {
    @visibility("read", "update")
    date: utcDateTime,
    temperatureC: int32,
    temperatureF: int32,
    summary?: string,
    @added(Versions.v2) name: string;
}

model Widget {
    @visibility("read", "update")
    @key id: string;
    weight: int32;
    color: "red" | "blue",
    @added(Versions.v2) name: string;
}

@route("/weather-forecasts")
@tag("WeatherForecasts")
@friendlyName("WeatherForecasts")
interface WeatherForecastInterface extends ResourceInterface<WeatherForecast> {

}

@route("/widgets")
@tag("Widgets")
interface WidgetInterface extends ResourceInterface<Widget> {
}