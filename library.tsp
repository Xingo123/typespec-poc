import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;

@error
model Error {
    code: int32,
    message: string
}

model List<T> {
    value: T[];
    nextLink?: url;
}

model Patch<T> {
    @header contentType: "application/merge-patch-json";
    ...T;
}

model ApiVersion{
    @doc("The version of the api in the form YYYY-MM-DD")
    @query("api-version") apiVersion: string;
}

interface ResourceInterface<T> {
    @get list(...ApiVersion): List<T> | Error;
    @get read(@path id: string, ...ApiVersion): T | Error;
    @post create(@body body: T, ...ApiVersion): T | Error;
    @patch update(@body body: Patch<T>, ...ApiVersion): T | Error;
    @delete delete(@path id: string, ...ApiVersion): void | Error;
}