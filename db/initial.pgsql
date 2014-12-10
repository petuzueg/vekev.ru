--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

DROP INDEX public.watchdog_uid_idx;
DROP INDEX public.watchdog_type_idx;
DROP INDEX public.watchdog_severity_idx;
DROP INDEX public.users_roles_rid_idx;
DROP INDEX public.users_picture_idx;
DROP INDEX public.users_mail_idx;
DROP INDEX public.users_created_idx;
DROP INDEX public.users_access_idx;
DROP INDEX public.url_alias_source_language_pid_idx;
DROP INDEX public.url_alias_alias_language_pid_idx;
DROP INDEX public.system_type_name_idx;
DROP INDEX public.system_system_list_idx;
DROP INDEX public.sessions_uid_idx;
DROP INDEX public.sessions_timestamp_idx;
DROP INDEX public.sessions_ssid_idx;
DROP INDEX public.semaphore_value_idx;
DROP INDEX public.semaphore_expire_idx;
DROP INDEX public.role_permission_permission_idx;
DROP INDEX public.role_name_weight_idx;
DROP INDEX public.registry_hook_idx;
DROP INDEX public.queue_name_created_idx;
DROP INDEX public.queue_expire_idx;
DROP INDEX public.node_uid_idx;
DROP INDEX public.node_translate_idx;
DROP INDEX public.node_tnid_idx;
DROP INDEX public.node_revision_uid_idx;
DROP INDEX public.node_revision_nid_idx;
DROP INDEX public.node_node_type_idx;
DROP INDEX public.node_node_title_type_idx;
DROP INDEX public.node_node_status_type_idx;
DROP INDEX public.node_node_frontpage_idx;
DROP INDEX public.node_node_created_idx;
DROP INDEX public.node_node_changed_idx;
DROP INDEX public.node_language_idx;
DROP INDEX public.menu_router_tab_root_weight_title_idx;
DROP INDEX public.menu_router_tab_parent_idx;
DROP INDEX public.menu_router_fit_idx;
DROP INDEX public.menu_links_router_path_idx;
DROP INDEX public.menu_links_path_menu_idx;
DROP INDEX public.menu_links_menu_plid_expand_child_idx;
DROP INDEX public.menu_links_menu_parents_idx;
DROP INDEX public.locales_target_plural_idx;
DROP INDEX public.locales_target_plid_idx;
DROP INDEX public.locales_target_lid_idx;
DROP INDEX public.locales_source_source_context_idx;
DROP INDEX public.languages_list_idx;
DROP INDEX public.history_nid_idx;
DROP INDEX public.flood_purge_idx;
DROP INDEX public.flood_allow_idx;
DROP INDEX public.filter_list_idx;
DROP INDEX public.filter_format_status_weight_idx;
DROP INDEX public.file_usage_type_id_idx;
DROP INDEX public.file_usage_fid_module_idx;
DROP INDEX public.file_usage_fid_count_idx;
DROP INDEX public.file_managed_uid_idx;
DROP INDEX public.file_managed_timestamp_idx;
DROP INDEX public.file_managed_status_idx;
DROP INDEX public.field_config_type_idx;
DROP INDEX public.field_config_storage_type_idx;
DROP INDEX public.field_config_storage_module_idx;
DROP INDEX public.field_config_storage_active_idx;
DROP INDEX public.field_config_module_idx;
DROP INDEX public.field_config_instance_field_name_bundle_idx;
DROP INDEX public.field_config_instance_deleted_idx;
DROP INDEX public.field_config_field_name_idx;
DROP INDEX public.field_config_deleted_idx;
DROP INDEX public.field_config_active_idx;
DROP INDEX public.date_format_type_title_idx;
DROP INDEX public.cache_path_expire_idx;
DROP INDEX public.cache_page_expire_idx;
DROP INDEX public.cache_menu_expire_idx;
DROP INDEX public.cache_l10n_update_expire_idx;
DROP INDEX public.cache_form_expire_idx;
DROP INDEX public.cache_filter_expire_idx;
DROP INDEX public.cache_field_expire_idx;
DROP INDEX public.cache_expire_idx;
DROP INDEX public.cache_bootstrap_expire_idx;
DROP INDEX public.cache_block_expire_idx;
DROP INDEX public.cache_admin_menu_expire_idx;
DROP INDEX public.blocked_ips_blocked_ip_idx;
DROP INDEX public.block_role_rid_idx;
DROP INDEX public.block_node_type_type_idx;
DROP INDEX public.block_list_idx;
DROP INDEX public.batch_token_idx;
ALTER TABLE ONLY public.watchdog DROP CONSTRAINT watchdog_pkey;
ALTER TABLE ONLY public.variable DROP CONSTRAINT variable_pkey;
ALTER TABLE ONLY public.users_roles DROP CONSTRAINT users_roles_pkey;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_name_key;
ALTER TABLE ONLY public.url_alias DROP CONSTRAINT url_alias_pkey;
ALTER TABLE ONLY public.system DROP CONSTRAINT system_pkey;
ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
ALTER TABLE ONLY public.sequences DROP CONSTRAINT sequences_pkey;
ALTER TABLE ONLY public.semaphore DROP CONSTRAINT semaphore_pkey;
ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
ALTER TABLE ONLY public.role_permission DROP CONSTRAINT role_permission_pkey;
ALTER TABLE ONLY public.role DROP CONSTRAINT role_name_key;
ALTER TABLE ONLY public.registry DROP CONSTRAINT registry_pkey;
ALTER TABLE ONLY public.registry_file DROP CONSTRAINT registry_file_pkey;
ALTER TABLE ONLY public.queue DROP CONSTRAINT queue_pkey;
ALTER TABLE ONLY public.node DROP CONSTRAINT node_vid_key;
ALTER TABLE ONLY public.node_type DROP CONSTRAINT node_type_pkey;
ALTER TABLE ONLY public.node_revision DROP CONSTRAINT node_revision_pkey;
ALTER TABLE ONLY public.node DROP CONSTRAINT node_pkey;
ALTER TABLE ONLY public.node_access DROP CONSTRAINT node_access_pkey;
ALTER TABLE ONLY public.menu_router DROP CONSTRAINT menu_router_pkey;
ALTER TABLE ONLY public.menu_links DROP CONSTRAINT menu_links_pkey;
ALTER TABLE ONLY public.locales_target DROP CONSTRAINT locales_target_pkey;
ALTER TABLE ONLY public.locales_source DROP CONSTRAINT locales_source_pkey;
ALTER TABLE ONLY public.languages DROP CONSTRAINT languages_pkey;
ALTER TABLE ONLY public.l10n_update_project DROP CONSTRAINT l10n_update_project_pkey;
ALTER TABLE ONLY public.l10n_update_file DROP CONSTRAINT l10n_update_file_pkey;
ALTER TABLE ONLY public.history DROP CONSTRAINT history_pkey;
ALTER TABLE ONLY public.flood DROP CONSTRAINT flood_pkey;
ALTER TABLE ONLY public.filter DROP CONSTRAINT filter_pkey;
ALTER TABLE ONLY public.filter_format DROP CONSTRAINT filter_format_pkey;
ALTER TABLE ONLY public.filter_format DROP CONSTRAINT filter_format_name_key;
ALTER TABLE ONLY public.file_usage DROP CONSTRAINT file_usage_pkey;
ALTER TABLE ONLY public.file_managed DROP CONSTRAINT file_managed_uri_key;
ALTER TABLE ONLY public.file_managed DROP CONSTRAINT file_managed_pkey;
ALTER TABLE ONLY public.field_config DROP CONSTRAINT field_config_pkey;
ALTER TABLE ONLY public.field_config_instance DROP CONSTRAINT field_config_instance_pkey;
ALTER TABLE ONLY public.date_formats DROP CONSTRAINT date_formats_pkey;
ALTER TABLE ONLY public.date_formats DROP CONSTRAINT date_formats_formats_key;
ALTER TABLE ONLY public.date_format_type DROP CONSTRAINT date_format_type_pkey;
ALTER TABLE ONLY public.date_format_locale DROP CONSTRAINT date_format_locale_pkey;
ALTER TABLE ONLY public.cache DROP CONSTRAINT cache_pkey;
ALTER TABLE ONLY public.cache_path DROP CONSTRAINT cache_path_pkey;
ALTER TABLE ONLY public.cache_page DROP CONSTRAINT cache_page_pkey;
ALTER TABLE ONLY public.cache_menu DROP CONSTRAINT cache_menu_pkey;
ALTER TABLE ONLY public.cache_l10n_update DROP CONSTRAINT cache_l10n_update_pkey;
ALTER TABLE ONLY public.cache_form DROP CONSTRAINT cache_form_pkey;
ALTER TABLE ONLY public.cache_filter DROP CONSTRAINT cache_filter_pkey;
ALTER TABLE ONLY public.cache_field DROP CONSTRAINT cache_field_pkey;
ALTER TABLE ONLY public.cache_bootstrap DROP CONSTRAINT cache_bootstrap_pkey;
ALTER TABLE ONLY public.cache_block DROP CONSTRAINT cache_block_pkey;
ALTER TABLE ONLY public.cache_admin_menu DROP CONSTRAINT cache_admin_menu_pkey;
ALTER TABLE ONLY public.blocked_ips DROP CONSTRAINT blocked_ips_pkey;
ALTER TABLE ONLY public.block DROP CONSTRAINT block_tmd_key;
ALTER TABLE ONLY public.block_role DROP CONSTRAINT block_role_pkey;
ALTER TABLE ONLY public.block DROP CONSTRAINT block_pkey;
ALTER TABLE ONLY public.block_node_type DROP CONSTRAINT block_node_type_pkey;
ALTER TABLE ONLY public.block_custom DROP CONSTRAINT block_custom_pkey;
ALTER TABLE ONLY public.block_custom DROP CONSTRAINT block_custom_info_key;
ALTER TABLE ONLY public.batch DROP CONSTRAINT batch_pkey;
ALTER TABLE ONLY public.authmap DROP CONSTRAINT authmap_pkey;
ALTER TABLE ONLY public.authmap DROP CONSTRAINT authmap_authname_key;
ALTER TABLE ONLY public.actions DROP CONSTRAINT actions_pkey;
ALTER TABLE public.watchdog ALTER COLUMN wid DROP DEFAULT;
ALTER TABLE public.url_alias ALTER COLUMN pid DROP DEFAULT;
ALTER TABLE public.sequences ALTER COLUMN value DROP DEFAULT;
ALTER TABLE public.role ALTER COLUMN rid DROP DEFAULT;
ALTER TABLE public.queue ALTER COLUMN item_id DROP DEFAULT;
ALTER TABLE public.node_revision ALTER COLUMN vid DROP DEFAULT;
ALTER TABLE public.node ALTER COLUMN nid DROP DEFAULT;
ALTER TABLE public.menu_links ALTER COLUMN mlid DROP DEFAULT;
ALTER TABLE public.locales_source ALTER COLUMN lid DROP DEFAULT;
ALTER TABLE public.flood ALTER COLUMN fid DROP DEFAULT;
ALTER TABLE public.file_managed ALTER COLUMN fid DROP DEFAULT;
ALTER TABLE public.field_config_instance ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.field_config ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.date_formats ALTER COLUMN dfid DROP DEFAULT;
ALTER TABLE public.blocked_ips ALTER COLUMN iid DROP DEFAULT;
ALTER TABLE public.block_custom ALTER COLUMN bid DROP DEFAULT;
ALTER TABLE public.block ALTER COLUMN bid DROP DEFAULT;
ALTER TABLE public.authmap ALTER COLUMN aid DROP DEFAULT;
DROP SEQUENCE public.watchdog_wid_seq;
DROP TABLE public.watchdog;
DROP TABLE public.variable;
DROP TABLE public.users_roles;
DROP TABLE public.users;
DROP SEQUENCE public.url_alias_pid_seq;
DROP TABLE public.url_alias;
DROP TABLE public.system;
DROP TABLE public.sessions;
DROP SEQUENCE public.sequences_value_seq;
DROP TABLE public.sequences;
DROP TABLE public.semaphore;
DROP SEQUENCE public.role_rid_seq;
DROP TABLE public.role_permission;
DROP TABLE public.role;
DROP TABLE public.registry_file;
DROP TABLE public.registry;
DROP SEQUENCE public.queue_item_id_seq;
DROP TABLE public.queue;
DROP TABLE public.node_type;
DROP SEQUENCE public.node_revision_vid_seq;
DROP TABLE public.node_revision;
DROP SEQUENCE public.node_nid_seq;
DROP TABLE public.node_access;
DROP TABLE public.node;
DROP TABLE public.menu_router;
DROP SEQUENCE public.menu_links_mlid_seq;
DROP TABLE public.menu_links;
DROP TABLE public.locales_target;
DROP SEQUENCE public.locales_source_lid_seq;
DROP TABLE public.locales_source;
DROP TABLE public.languages;
DROP TABLE public.l10n_update_project;
DROP TABLE public.l10n_update_file;
DROP TABLE public.history;
DROP SEQUENCE public.flood_fid_seq;
DROP TABLE public.flood;
DROP TABLE public.filter_format;
DROP TABLE public.filter;
DROP TABLE public.file_usage;
DROP SEQUENCE public.file_managed_fid_seq;
DROP TABLE public.file_managed;
DROP SEQUENCE public.field_config_instance_id_seq;
DROP TABLE public.field_config_instance;
DROP SEQUENCE public.field_config_id_seq;
DROP TABLE public.field_config;
DROP SEQUENCE public.date_formats_dfid_seq;
DROP TABLE public.date_formats;
DROP TABLE public.date_format_type;
DROP TABLE public.date_format_locale;
DROP TABLE public.cache_path;
DROP TABLE public.cache_page;
DROP TABLE public.cache_menu;
DROP TABLE public.cache_l10n_update;
DROP TABLE public.cache_form;
DROP TABLE public.cache_filter;
DROP TABLE public.cache_field;
DROP TABLE public.cache_bootstrap;
DROP TABLE public.cache_block;
DROP TABLE public.cache_admin_menu;
DROP TABLE public.cache;
DROP SEQUENCE public.blocked_ips_iid_seq;
DROP TABLE public.blocked_ips;
DROP TABLE public.block_role;
DROP TABLE public.block_node_type;
DROP SEQUENCE public.block_custom_bid_seq;
DROP TABLE public.block_custom;
DROP SEQUENCE public.block_bid_seq;
DROP TABLE public.block;
DROP TABLE public.batch;
DROP SEQUENCE public.authmap_aid_seq;
DROP TABLE public.authmap;
DROP TABLE public.actions;
DROP FUNCTION public.substring_index(text, text, integer);
DROP FUNCTION public.rand();
DROP FUNCTION public."greatest"(numeric, numeric, numeric);
DROP FUNCTION public."greatest"(numeric, numeric);
DROP FUNCTION public.concat(text, text);
DROP FUNCTION public.concat(text, anynonarray);
DROP FUNCTION public.concat(anynonarray, text);
DROP FUNCTION public.concat(anynonarray, anynonarray);
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: petu
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO petu;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: petu
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- Name: concat(anynonarray, anynonarray); Type: FUNCTION; Schema: public; Owner: drupal
--

CREATE FUNCTION concat(anynonarray, anynonarray) RETURNS text
    LANGUAGE sql
    AS $_$SELECT CAST($1 AS text) || CAST($2 AS text);$_$;


ALTER FUNCTION public.concat(anynonarray, anynonarray) OWNER TO drupal;

--
-- Name: concat(anynonarray, text); Type: FUNCTION; Schema: public; Owner: drupal
--

CREATE FUNCTION concat(anynonarray, text) RETURNS text
    LANGUAGE sql
    AS $_$SELECT CAST($1 AS text) || $2;$_$;


ALTER FUNCTION public.concat(anynonarray, text) OWNER TO drupal;

--
-- Name: concat(text, anynonarray); Type: FUNCTION; Schema: public; Owner: drupal
--

CREATE FUNCTION concat(text, anynonarray) RETURNS text
    LANGUAGE sql
    AS $_$SELECT $1 || CAST($2 AS text);$_$;


ALTER FUNCTION public.concat(text, anynonarray) OWNER TO drupal;

--
-- Name: concat(text, text); Type: FUNCTION; Schema: public; Owner: drupal
--

CREATE FUNCTION concat(text, text) RETURNS text
    LANGUAGE sql
    AS $_$SELECT $1 || $2;$_$;


ALTER FUNCTION public.concat(text, text) OWNER TO drupal;

--
-- Name: greatest(numeric, numeric); Type: FUNCTION; Schema: public; Owner: drupal
--

CREATE FUNCTION "greatest"(numeric, numeric) RETURNS numeric
    LANGUAGE sql
    AS $_$SELECT CASE WHEN (($1 > $2) OR ($2 IS NULL)) THEN $1 ELSE $2 END;$_$;


ALTER FUNCTION public."greatest"(numeric, numeric) OWNER TO drupal;

--
-- Name: greatest(numeric, numeric, numeric); Type: FUNCTION; Schema: public; Owner: drupal
--

CREATE FUNCTION "greatest"(numeric, numeric, numeric) RETURNS numeric
    LANGUAGE sql
    AS $_$SELECT greatest($1, greatest($2, $3));$_$;


ALTER FUNCTION public."greatest"(numeric, numeric, numeric) OWNER TO drupal;

--
-- Name: rand(); Type: FUNCTION; Schema: public; Owner: drupal
--

CREATE FUNCTION rand() RETURNS double precision
    LANGUAGE sql
    AS $$SELECT random();$$;


ALTER FUNCTION public.rand() OWNER TO drupal;

--
-- Name: substring_index(text, text, integer); Type: FUNCTION; Schema: public; Owner: drupal
--

CREATE FUNCTION substring_index(text, text, integer) RETURNS text
    LANGUAGE sql
    AS $_$SELECT array_to_string((string_to_array($1, $2)) [1:$3], $2);$_$;


ALTER FUNCTION public.substring_index(text, text, integer) OWNER TO drupal;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: actions; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE actions (
    aid character varying(255) DEFAULT '0'::character varying NOT NULL,
    type character varying(32) DEFAULT ''::character varying NOT NULL,
    callback character varying(255) DEFAULT ''::character varying NOT NULL,
    parameters bytea NOT NULL,
    label character varying(255) DEFAULT '0'::character varying NOT NULL
);


ALTER TABLE public.actions OWNER TO drupal;

--
-- Name: TABLE actions; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE actions IS 'Stores action information.';


--
-- Name: COLUMN actions.aid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN actions.aid IS 'Primary Key: Unique actions ID.';


--
-- Name: COLUMN actions.type; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN actions.type IS 'The object that that action acts on (node, user, comment, system or custom types.)';


--
-- Name: COLUMN actions.callback; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN actions.callback IS 'The callback function that executes when the action runs.';


--
-- Name: COLUMN actions.parameters; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN actions.parameters IS 'Parameters to be passed to the callback function.';


--
-- Name: COLUMN actions.label; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN actions.label IS 'Label of the action.';


--
-- Name: authmap; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE authmap (
    aid integer NOT NULL,
    uid integer DEFAULT 0 NOT NULL,
    authname character varying(128) DEFAULT ''::character varying NOT NULL,
    module character varying(128) DEFAULT ''::character varying NOT NULL,
    CONSTRAINT authmap_aid_check CHECK ((aid >= 0))
);


ALTER TABLE public.authmap OWNER TO drupal;

--
-- Name: TABLE authmap; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE authmap IS 'Stores distributed authentication mapping.';


--
-- Name: COLUMN authmap.aid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN authmap.aid IS 'Primary Key: Unique authmap ID.';


--
-- Name: COLUMN authmap.uid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN authmap.uid IS 'User''s users.uid.';


--
-- Name: COLUMN authmap.authname; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN authmap.authname IS 'Unique authentication name.';


--
-- Name: COLUMN authmap.module; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN authmap.module IS 'Module which is controlling the authentication.';


--
-- Name: authmap_aid_seq; Type: SEQUENCE; Schema: public; Owner: drupal
--

CREATE SEQUENCE authmap_aid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authmap_aid_seq OWNER TO drupal;

--
-- Name: authmap_aid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: drupal
--

ALTER SEQUENCE authmap_aid_seq OWNED BY authmap.aid;


--
-- Name: batch; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE batch (
    bid bigint NOT NULL,
    token character varying(64) NOT NULL,
    "timestamp" integer NOT NULL,
    batch bytea,
    CONSTRAINT batch_bid_check CHECK ((bid >= 0))
);


ALTER TABLE public.batch OWNER TO drupal;

--
-- Name: TABLE batch; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE batch IS 'Stores details about batches (processes that run in multiple HTTP requests).';


--
-- Name: COLUMN batch.bid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN batch.bid IS 'Primary Key: Unique batch ID.';


--
-- Name: COLUMN batch.token; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN batch.token IS 'A string token generated against the current user''s session id and the batch id, used to ensure that only the user who submitted the batch can effectively access it.';


--
-- Name: COLUMN batch."timestamp"; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN batch."timestamp" IS 'A Unix timestamp indicating when this batch was submitted for processing. Stale batches are purged at cron time.';


--
-- Name: COLUMN batch.batch; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN batch.batch IS 'A serialized array containing the processing data for the batch.';


--
-- Name: block; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE block (
    bid integer NOT NULL,
    module character varying(64) DEFAULT ''::character varying NOT NULL,
    delta character varying(32) DEFAULT '0'::character varying NOT NULL,
    theme character varying(64) DEFAULT ''::character varying NOT NULL,
    status smallint DEFAULT 0 NOT NULL,
    weight integer DEFAULT 0 NOT NULL,
    region character varying(64) DEFAULT ''::character varying NOT NULL,
    custom smallint DEFAULT 0 NOT NULL,
    visibility smallint DEFAULT 0 NOT NULL,
    pages text NOT NULL,
    title character varying(255) DEFAULT ''::character varying NOT NULL,
    cache smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.block OWNER TO drupal;

--
-- Name: TABLE block; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE block IS 'Stores block settings, such as region and visibility settings.';


--
-- Name: COLUMN block.bid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN block.bid IS 'Primary Key: Unique block ID.';


--
-- Name: COLUMN block.module; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN block.module IS 'The module from which the block originates; for example, ''user'' for the Who''s Online block, and ''block'' for any custom blocks.';


--
-- Name: COLUMN block.delta; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN block.delta IS 'Unique ID for block within a module.';


--
-- Name: COLUMN block.theme; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN block.theme IS 'The theme under which the block settings apply.';


--
-- Name: COLUMN block.status; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN block.status IS 'Block enabled status. (1 = enabled, 0 = disabled)';


--
-- Name: COLUMN block.weight; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN block.weight IS 'Block weight within region.';


--
-- Name: COLUMN block.region; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN block.region IS 'Theme region within which the block is set.';


--
-- Name: COLUMN block.custom; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN block.custom IS 'Flag to indicate how users may control visibility of the block. (0 = Users cannot control, 1 = On by default, but can be hidden, 2 = Hidden by default, but can be shown)';


--
-- Name: COLUMN block.visibility; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN block.visibility IS 'Flag to indicate how to show blocks on pages. (0 = Show on all pages except listed pages, 1 = Show only on listed pages, 2 = Use custom PHP code to determine visibility)';


--
-- Name: COLUMN block.pages; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN block.pages IS 'Contents of the "Pages" block; contains either a list of paths on which to include/exclude the block or PHP code, depending on "visibility" setting.';


--
-- Name: COLUMN block.title; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN block.title IS 'Custom title for the block. (Empty string will use block default title, <none> will remove the title, text will cause block to use specified title.)';


--
-- Name: COLUMN block.cache; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN block.cache IS 'Binary flag to indicate block cache mode. (-2: Custom cache, -1: Do not cache, 1: Cache per role, 2: Cache per user, 4: Cache per page, 8: Block cache global) See DRUPAL_CACHE_* constants in ../includes/common.inc for more detailed information.';


--
-- Name: block_bid_seq; Type: SEQUENCE; Schema: public; Owner: drupal
--

CREATE SEQUENCE block_bid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.block_bid_seq OWNER TO drupal;

--
-- Name: block_bid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: drupal
--

ALTER SEQUENCE block_bid_seq OWNED BY block.bid;


--
-- Name: block_custom; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE block_custom (
    bid integer NOT NULL,
    body text,
    info character varying(128) DEFAULT ''::character varying NOT NULL,
    format character varying(255),
    CONSTRAINT block_custom_bid_check CHECK ((bid >= 0))
);


ALTER TABLE public.block_custom OWNER TO drupal;

--
-- Name: TABLE block_custom; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE block_custom IS 'Stores contents of custom-made blocks.';


--
-- Name: COLUMN block_custom.bid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN block_custom.bid IS 'The block''s block.bid.';


--
-- Name: COLUMN block_custom.body; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN block_custom.body IS 'Block contents.';


--
-- Name: COLUMN block_custom.info; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN block_custom.info IS 'Block description.';


--
-- Name: COLUMN block_custom.format; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN block_custom.format IS 'The filter_format.format of the block body.';


--
-- Name: block_custom_bid_seq; Type: SEQUENCE; Schema: public; Owner: drupal
--

CREATE SEQUENCE block_custom_bid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.block_custom_bid_seq OWNER TO drupal;

--
-- Name: block_custom_bid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: drupal
--

ALTER SEQUENCE block_custom_bid_seq OWNED BY block_custom.bid;


--
-- Name: block_node_type; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE block_node_type (
    module character varying(64) NOT NULL,
    delta character varying(32) NOT NULL,
    type character varying(32) NOT NULL
);


ALTER TABLE public.block_node_type OWNER TO drupal;

--
-- Name: TABLE block_node_type; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE block_node_type IS 'Sets up display criteria for blocks based on content types';


--
-- Name: COLUMN block_node_type.module; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN block_node_type.module IS 'The block''s origin module, from block.module.';


--
-- Name: COLUMN block_node_type.delta; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN block_node_type.delta IS 'The block''s unique delta within module, from block.delta.';


--
-- Name: COLUMN block_node_type.type; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN block_node_type.type IS 'The machine-readable name of this type from node_type.type.';


--
-- Name: block_role; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE block_role (
    module character varying(64) NOT NULL,
    delta character varying(32) NOT NULL,
    rid bigint NOT NULL,
    CONSTRAINT block_role_rid_check CHECK ((rid >= 0))
);


ALTER TABLE public.block_role OWNER TO drupal;

--
-- Name: TABLE block_role; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE block_role IS 'Sets up access permissions for blocks based on user roles';


--
-- Name: COLUMN block_role.module; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN block_role.module IS 'The block''s origin module, from block.module.';


--
-- Name: COLUMN block_role.delta; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN block_role.delta IS 'The block''s unique delta within module, from block.delta.';


--
-- Name: COLUMN block_role.rid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN block_role.rid IS 'The user''s role ID from users_roles.rid.';


--
-- Name: blocked_ips; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE blocked_ips (
    iid integer NOT NULL,
    ip character varying(40) DEFAULT ''::character varying NOT NULL,
    CONSTRAINT blocked_ips_iid_check CHECK ((iid >= 0))
);


ALTER TABLE public.blocked_ips OWNER TO drupal;

--
-- Name: TABLE blocked_ips; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE blocked_ips IS 'Stores blocked IP addresses.';


--
-- Name: COLUMN blocked_ips.iid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN blocked_ips.iid IS 'Primary Key: unique ID for IP addresses.';


--
-- Name: COLUMN blocked_ips.ip; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN blocked_ips.ip IS 'IP address';


--
-- Name: blocked_ips_iid_seq; Type: SEQUENCE; Schema: public; Owner: drupal
--

CREATE SEQUENCE blocked_ips_iid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blocked_ips_iid_seq OWNER TO drupal;

--
-- Name: blocked_ips_iid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: drupal
--

ALTER SEQUENCE blocked_ips_iid_seq OWNED BY blocked_ips.iid;


--
-- Name: cache; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE cache (
    cid character varying(255) DEFAULT ''::character varying NOT NULL,
    data bytea,
    expire integer DEFAULT 0 NOT NULL,
    created integer DEFAULT 0 NOT NULL,
    serialized smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.cache OWNER TO drupal;

--
-- Name: TABLE cache; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE cache IS 'Generic cache table for caching things not separated out into their own tables. Contributed modules may also use this to store cached items.';


--
-- Name: COLUMN cache.cid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache.cid IS 'Primary Key: Unique cache ID.';


--
-- Name: COLUMN cache.data; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache.data IS 'A collection of data to cache.';


--
-- Name: COLUMN cache.expire; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache.expire IS 'A Unix timestamp indicating when the cache entry should expire, or 0 for never.';


--
-- Name: COLUMN cache.created; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache.created IS 'A Unix timestamp indicating when the cache entry was created.';


--
-- Name: COLUMN cache.serialized; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache.serialized IS 'A flag to indicate whether content is serialized (1) or not (0).';


--
-- Name: cache_admin_menu; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE cache_admin_menu (
    cid character varying(255) DEFAULT ''::character varying NOT NULL,
    data bytea,
    expire integer DEFAULT 0 NOT NULL,
    created integer DEFAULT 0 NOT NULL,
    serialized smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.cache_admin_menu OWNER TO drupal;

--
-- Name: TABLE cache_admin_menu; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE cache_admin_menu IS 'Cache table for Administration menu to store client-side caching hashes.';


--
-- Name: COLUMN cache_admin_menu.cid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_admin_menu.cid IS 'Primary Key: Unique cache ID.';


--
-- Name: COLUMN cache_admin_menu.data; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_admin_menu.data IS 'A collection of data to cache.';


--
-- Name: COLUMN cache_admin_menu.expire; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_admin_menu.expire IS 'A Unix timestamp indicating when the cache entry should expire, or 0 for never.';


--
-- Name: COLUMN cache_admin_menu.created; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_admin_menu.created IS 'A Unix timestamp indicating when the cache entry was created.';


--
-- Name: COLUMN cache_admin_menu.serialized; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_admin_menu.serialized IS 'A flag to indicate whether content is serialized (1) or not (0).';


--
-- Name: cache_block; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE cache_block (
    cid character varying(255) DEFAULT ''::character varying NOT NULL,
    data bytea,
    expire integer DEFAULT 0 NOT NULL,
    created integer DEFAULT 0 NOT NULL,
    serialized smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.cache_block OWNER TO drupal;

--
-- Name: TABLE cache_block; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE cache_block IS 'Cache table for the Block module to store already built blocks, identified by module, delta, and various contexts which may change the block, such as theme, locale, and caching mode defined for the block.';


--
-- Name: COLUMN cache_block.cid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_block.cid IS 'Primary Key: Unique cache ID.';


--
-- Name: COLUMN cache_block.data; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_block.data IS 'A collection of data to cache.';


--
-- Name: COLUMN cache_block.expire; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_block.expire IS 'A Unix timestamp indicating when the cache entry should expire, or 0 for never.';


--
-- Name: COLUMN cache_block.created; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_block.created IS 'A Unix timestamp indicating when the cache entry was created.';


--
-- Name: COLUMN cache_block.serialized; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_block.serialized IS 'A flag to indicate whether content is serialized (1) or not (0).';


--
-- Name: cache_bootstrap; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE cache_bootstrap (
    cid character varying(255) DEFAULT ''::character varying NOT NULL,
    data bytea,
    expire integer DEFAULT 0 NOT NULL,
    created integer DEFAULT 0 NOT NULL,
    serialized smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.cache_bootstrap OWNER TO drupal;

--
-- Name: TABLE cache_bootstrap; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE cache_bootstrap IS 'Cache table for data required to bootstrap Drupal, may be routed to a shared memory cache.';


--
-- Name: COLUMN cache_bootstrap.cid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_bootstrap.cid IS 'Primary Key: Unique cache ID.';


--
-- Name: COLUMN cache_bootstrap.data; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_bootstrap.data IS 'A collection of data to cache.';


--
-- Name: COLUMN cache_bootstrap.expire; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_bootstrap.expire IS 'A Unix timestamp indicating when the cache entry should expire, or 0 for never.';


--
-- Name: COLUMN cache_bootstrap.created; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_bootstrap.created IS 'A Unix timestamp indicating when the cache entry was created.';


--
-- Name: COLUMN cache_bootstrap.serialized; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_bootstrap.serialized IS 'A flag to indicate whether content is serialized (1) or not (0).';


--
-- Name: cache_field; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE cache_field (
    cid character varying(255) DEFAULT ''::character varying NOT NULL,
    data bytea,
    expire integer DEFAULT 0 NOT NULL,
    created integer DEFAULT 0 NOT NULL,
    serialized smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.cache_field OWNER TO drupal;

--
-- Name: TABLE cache_field; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE cache_field IS 'Cache table for the Field module to store already built field information.';


--
-- Name: COLUMN cache_field.cid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_field.cid IS 'Primary Key: Unique cache ID.';


--
-- Name: COLUMN cache_field.data; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_field.data IS 'A collection of data to cache.';


--
-- Name: COLUMN cache_field.expire; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_field.expire IS 'A Unix timestamp indicating when the cache entry should expire, or 0 for never.';


--
-- Name: COLUMN cache_field.created; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_field.created IS 'A Unix timestamp indicating when the cache entry was created.';


--
-- Name: COLUMN cache_field.serialized; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_field.serialized IS 'A flag to indicate whether content is serialized (1) or not (0).';


--
-- Name: cache_filter; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE cache_filter (
    cid character varying(255) DEFAULT ''::character varying NOT NULL,
    data bytea,
    expire integer DEFAULT 0 NOT NULL,
    created integer DEFAULT 0 NOT NULL,
    serialized smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.cache_filter OWNER TO drupal;

--
-- Name: TABLE cache_filter; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE cache_filter IS 'Cache table for the Filter module to store already filtered pieces of text, identified by text format and hash of the text.';


--
-- Name: COLUMN cache_filter.cid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_filter.cid IS 'Primary Key: Unique cache ID.';


--
-- Name: COLUMN cache_filter.data; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_filter.data IS 'A collection of data to cache.';


--
-- Name: COLUMN cache_filter.expire; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_filter.expire IS 'A Unix timestamp indicating when the cache entry should expire, or 0 for never.';


--
-- Name: COLUMN cache_filter.created; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_filter.created IS 'A Unix timestamp indicating when the cache entry was created.';


--
-- Name: COLUMN cache_filter.serialized; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_filter.serialized IS 'A flag to indicate whether content is serialized (1) or not (0).';


--
-- Name: cache_form; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE cache_form (
    cid character varying(255) DEFAULT ''::character varying NOT NULL,
    data bytea,
    expire integer DEFAULT 0 NOT NULL,
    created integer DEFAULT 0 NOT NULL,
    serialized smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.cache_form OWNER TO drupal;

--
-- Name: TABLE cache_form; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE cache_form IS 'Cache table for the form system to store recently built forms and their storage data, to be used in subsequent page requests.';


--
-- Name: COLUMN cache_form.cid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_form.cid IS 'Primary Key: Unique cache ID.';


--
-- Name: COLUMN cache_form.data; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_form.data IS 'A collection of data to cache.';


--
-- Name: COLUMN cache_form.expire; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_form.expire IS 'A Unix timestamp indicating when the cache entry should expire, or 0 for never.';


--
-- Name: COLUMN cache_form.created; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_form.created IS 'A Unix timestamp indicating when the cache entry was created.';


--
-- Name: COLUMN cache_form.serialized; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_form.serialized IS 'A flag to indicate whether content is serialized (1) or not (0).';


--
-- Name: cache_l10n_update; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE cache_l10n_update (
    cid character varying(255) DEFAULT ''::character varying NOT NULL,
    data bytea,
    expire integer DEFAULT 0 NOT NULL,
    created integer DEFAULT 0 NOT NULL,
    serialized smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.cache_l10n_update OWNER TO drupal;

--
-- Name: TABLE cache_l10n_update; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE cache_l10n_update IS 'Cache table for the Localization Update module to store information about available releases, fetched from central server.';


--
-- Name: COLUMN cache_l10n_update.cid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_l10n_update.cid IS 'Primary Key: Unique cache ID.';


--
-- Name: COLUMN cache_l10n_update.data; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_l10n_update.data IS 'A collection of data to cache.';


--
-- Name: COLUMN cache_l10n_update.expire; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_l10n_update.expire IS 'A Unix timestamp indicating when the cache entry should expire, or 0 for never.';


--
-- Name: COLUMN cache_l10n_update.created; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_l10n_update.created IS 'A Unix timestamp indicating when the cache entry was created.';


--
-- Name: COLUMN cache_l10n_update.serialized; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_l10n_update.serialized IS 'A flag to indicate whether content is serialized (1) or not (0).';


--
-- Name: cache_menu; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE cache_menu (
    cid character varying(255) DEFAULT ''::character varying NOT NULL,
    data bytea,
    expire integer DEFAULT 0 NOT NULL,
    created integer DEFAULT 0 NOT NULL,
    serialized smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.cache_menu OWNER TO drupal;

--
-- Name: TABLE cache_menu; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE cache_menu IS 'Cache table for the menu system to store router information as well as generated link trees for various menu/page/user combinations.';


--
-- Name: COLUMN cache_menu.cid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_menu.cid IS 'Primary Key: Unique cache ID.';


--
-- Name: COLUMN cache_menu.data; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_menu.data IS 'A collection of data to cache.';


--
-- Name: COLUMN cache_menu.expire; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_menu.expire IS 'A Unix timestamp indicating when the cache entry should expire, or 0 for never.';


--
-- Name: COLUMN cache_menu.created; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_menu.created IS 'A Unix timestamp indicating when the cache entry was created.';


--
-- Name: COLUMN cache_menu.serialized; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_menu.serialized IS 'A flag to indicate whether content is serialized (1) or not (0).';


--
-- Name: cache_page; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE cache_page (
    cid character varying(255) DEFAULT ''::character varying NOT NULL,
    data bytea,
    expire integer DEFAULT 0 NOT NULL,
    created integer DEFAULT 0 NOT NULL,
    serialized smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.cache_page OWNER TO drupal;

--
-- Name: TABLE cache_page; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE cache_page IS 'Cache table used to store compressed pages for anonymous users, if page caching is enabled.';


--
-- Name: COLUMN cache_page.cid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_page.cid IS 'Primary Key: Unique cache ID.';


--
-- Name: COLUMN cache_page.data; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_page.data IS 'A collection of data to cache.';


--
-- Name: COLUMN cache_page.expire; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_page.expire IS 'A Unix timestamp indicating when the cache entry should expire, or 0 for never.';


--
-- Name: COLUMN cache_page.created; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_page.created IS 'A Unix timestamp indicating when the cache entry was created.';


--
-- Name: COLUMN cache_page.serialized; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_page.serialized IS 'A flag to indicate whether content is serialized (1) or not (0).';


--
-- Name: cache_path; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE cache_path (
    cid character varying(255) DEFAULT ''::character varying NOT NULL,
    data bytea,
    expire integer DEFAULT 0 NOT NULL,
    created integer DEFAULT 0 NOT NULL,
    serialized smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.cache_path OWNER TO drupal;

--
-- Name: TABLE cache_path; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE cache_path IS 'Cache table for path alias lookup.';


--
-- Name: COLUMN cache_path.cid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_path.cid IS 'Primary Key: Unique cache ID.';


--
-- Name: COLUMN cache_path.data; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_path.data IS 'A collection of data to cache.';


--
-- Name: COLUMN cache_path.expire; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_path.expire IS 'A Unix timestamp indicating when the cache entry should expire, or 0 for never.';


--
-- Name: COLUMN cache_path.created; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_path.created IS 'A Unix timestamp indicating when the cache entry was created.';


--
-- Name: COLUMN cache_path.serialized; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN cache_path.serialized IS 'A flag to indicate whether content is serialized (1) or not (0).';


--
-- Name: date_format_locale; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE date_format_locale (
    format character varying(100) NOT NULL,
    type character varying(64) NOT NULL,
    language character varying(12) NOT NULL
);


ALTER TABLE public.date_format_locale OWNER TO drupal;

--
-- Name: TABLE date_format_locale; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE date_format_locale IS 'Stores configured date formats for each locale.';


--
-- Name: COLUMN date_format_locale.format; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN date_format_locale.format IS 'The date format string.';


--
-- Name: COLUMN date_format_locale.type; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN date_format_locale.type IS 'The date format type, e.g. medium.';


--
-- Name: COLUMN date_format_locale.language; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN date_format_locale.language IS 'A languages.language for this format to be used with.';


--
-- Name: date_format_type; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE date_format_type (
    type character varying(64) NOT NULL,
    title character varying(255) NOT NULL,
    locked smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.date_format_type OWNER TO drupal;

--
-- Name: TABLE date_format_type; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE date_format_type IS 'Stores configured date format types.';


--
-- Name: COLUMN date_format_type.type; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN date_format_type.type IS 'The date format type, e.g. medium.';


--
-- Name: COLUMN date_format_type.title; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN date_format_type.title IS 'The human readable name of the format type.';


--
-- Name: COLUMN date_format_type.locked; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN date_format_type.locked IS 'Whether or not this is a system provided format.';


--
-- Name: date_formats; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE date_formats (
    dfid integer NOT NULL,
    format character varying(100) NOT NULL,
    type character varying(64) NOT NULL,
    locked smallint DEFAULT 0 NOT NULL,
    CONSTRAINT date_formats_dfid_check CHECK ((dfid >= 0))
);


ALTER TABLE public.date_formats OWNER TO drupal;

--
-- Name: TABLE date_formats; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE date_formats IS 'Stores configured date formats.';


--
-- Name: COLUMN date_formats.dfid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN date_formats.dfid IS 'The date format identifier.';


--
-- Name: COLUMN date_formats.format; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN date_formats.format IS 'The date format string.';


--
-- Name: COLUMN date_formats.type; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN date_formats.type IS 'The date format type, e.g. medium.';


--
-- Name: COLUMN date_formats.locked; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN date_formats.locked IS 'Whether or not this format can be modified.';


--
-- Name: date_formats_dfid_seq; Type: SEQUENCE; Schema: public; Owner: drupal
--

CREATE SEQUENCE date_formats_dfid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.date_formats_dfid_seq OWNER TO drupal;

--
-- Name: date_formats_dfid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: drupal
--

ALTER SEQUENCE date_formats_dfid_seq OWNED BY date_formats.dfid;


--
-- Name: field_config; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE field_config (
    id integer NOT NULL,
    field_name character varying(32) NOT NULL,
    type character varying(128) NOT NULL,
    module character varying(128) DEFAULT ''::character varying NOT NULL,
    active smallint DEFAULT 0 NOT NULL,
    storage_type character varying(128) NOT NULL,
    storage_module character varying(128) DEFAULT ''::character varying NOT NULL,
    storage_active smallint DEFAULT 0 NOT NULL,
    locked smallint DEFAULT 0 NOT NULL,
    data bytea NOT NULL,
    cardinality smallint DEFAULT 0 NOT NULL,
    translatable smallint DEFAULT 0 NOT NULL,
    deleted smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.field_config OWNER TO drupal;

--
-- Name: COLUMN field_config.id; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN field_config.id IS 'The primary identifier for a field';


--
-- Name: COLUMN field_config.field_name; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN field_config.field_name IS 'The name of this field. Non-deleted field names are unique, but multiple deleted fields can have the same name.';


--
-- Name: COLUMN field_config.type; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN field_config.type IS 'The type of this field.';


--
-- Name: COLUMN field_config.module; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN field_config.module IS 'The module that implements the field type.';


--
-- Name: COLUMN field_config.active; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN field_config.active IS 'Boolean indicating whether the module that implements the field type is enabled.';


--
-- Name: COLUMN field_config.storage_type; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN field_config.storage_type IS 'The storage backend for the field.';


--
-- Name: COLUMN field_config.storage_module; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN field_config.storage_module IS 'The module that implements the storage backend.';


--
-- Name: COLUMN field_config.storage_active; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN field_config.storage_active IS 'Boolean indicating whether the module that implements the storage backend is enabled.';


--
-- Name: COLUMN field_config.locked; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN field_config.locked IS '@TODO';


--
-- Name: COLUMN field_config.data; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN field_config.data IS 'Serialized data containing the field properties that do not warrant a dedicated column.';


--
-- Name: field_config_id_seq; Type: SEQUENCE; Schema: public; Owner: drupal
--

CREATE SEQUENCE field_config_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.field_config_id_seq OWNER TO drupal;

--
-- Name: field_config_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: drupal
--

ALTER SEQUENCE field_config_id_seq OWNED BY field_config.id;


--
-- Name: field_config_instance; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE field_config_instance (
    id integer NOT NULL,
    field_id integer NOT NULL,
    field_name character varying(32) DEFAULT ''::character varying NOT NULL,
    entity_type character varying(32) DEFAULT ''::character varying NOT NULL,
    bundle character varying(128) DEFAULT ''::character varying NOT NULL,
    data bytea NOT NULL,
    deleted smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.field_config_instance OWNER TO drupal;

--
-- Name: COLUMN field_config_instance.id; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN field_config_instance.id IS 'The primary identifier for a field instance';


--
-- Name: COLUMN field_config_instance.field_id; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN field_config_instance.field_id IS 'The identifier of the field attached by this instance';


--
-- Name: field_config_instance_id_seq; Type: SEQUENCE; Schema: public; Owner: drupal
--

CREATE SEQUENCE field_config_instance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.field_config_instance_id_seq OWNER TO drupal;

--
-- Name: field_config_instance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: drupal
--

ALTER SEQUENCE field_config_instance_id_seq OWNED BY field_config_instance.id;


--
-- Name: file_managed; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE file_managed (
    fid integer NOT NULL,
    uid bigint DEFAULT 0 NOT NULL,
    filename character varying(255) DEFAULT ''::character varying NOT NULL,
    uri character varying(255) DEFAULT ''::character varying NOT NULL,
    filemime character varying(255) DEFAULT ''::character varying NOT NULL,
    filesize bigint DEFAULT 0 NOT NULL,
    status smallint DEFAULT 0 NOT NULL,
    "timestamp" bigint DEFAULT 0 NOT NULL,
    CONSTRAINT file_managed_fid_check CHECK ((fid >= 0)),
    CONSTRAINT file_managed_filesize_check CHECK ((filesize >= 0)),
    CONSTRAINT file_managed_timestamp_check CHECK (("timestamp" >= 0)),
    CONSTRAINT file_managed_uid_check CHECK ((uid >= 0))
);


ALTER TABLE public.file_managed OWNER TO drupal;

--
-- Name: TABLE file_managed; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE file_managed IS 'Stores information for uploaded files.';


--
-- Name: COLUMN file_managed.fid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN file_managed.fid IS 'File ID.';


--
-- Name: COLUMN file_managed.uid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN file_managed.uid IS 'The users.uid of the user who is associated with the file.';


--
-- Name: COLUMN file_managed.filename; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN file_managed.filename IS 'Name of the file with no path components. This may differ from the basename of the URI if the file is renamed to avoid overwriting an existing file.';


--
-- Name: COLUMN file_managed.uri; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN file_managed.uri IS 'The URI to access the file (either local or remote).';


--
-- Name: COLUMN file_managed.filemime; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN file_managed.filemime IS 'The file''s MIME type.';


--
-- Name: COLUMN file_managed.filesize; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN file_managed.filesize IS 'The size of the file in bytes.';


--
-- Name: COLUMN file_managed.status; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN file_managed.status IS 'A field indicating the status of the file. Two status are defined in core: temporary (0) and permanent (1). Temporary files older than DRUPAL_MAXIMUM_TEMP_FILE_AGE will be removed during a cron run.';


--
-- Name: COLUMN file_managed."timestamp"; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN file_managed."timestamp" IS 'UNIX timestamp for when the file was added.';


--
-- Name: file_managed_fid_seq; Type: SEQUENCE; Schema: public; Owner: drupal
--

CREATE SEQUENCE file_managed_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.file_managed_fid_seq OWNER TO drupal;

--
-- Name: file_managed_fid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: drupal
--

ALTER SEQUENCE file_managed_fid_seq OWNED BY file_managed.fid;


--
-- Name: file_usage; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE file_usage (
    fid bigint NOT NULL,
    module character varying(255) DEFAULT ''::character varying NOT NULL,
    type character varying(64) DEFAULT ''::character varying NOT NULL,
    id bigint DEFAULT 0 NOT NULL,
    count bigint DEFAULT 0 NOT NULL,
    CONSTRAINT file_usage_count_check CHECK ((count >= 0)),
    CONSTRAINT file_usage_fid_check CHECK ((fid >= 0)),
    CONSTRAINT file_usage_id_check CHECK ((id >= 0))
);


ALTER TABLE public.file_usage OWNER TO drupal;

--
-- Name: TABLE file_usage; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE file_usage IS 'Track where a file is used.';


--
-- Name: COLUMN file_usage.fid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN file_usage.fid IS 'File ID.';


--
-- Name: COLUMN file_usage.module; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN file_usage.module IS 'The name of the module that is using the file.';


--
-- Name: COLUMN file_usage.type; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN file_usage.type IS 'The name of the object type in which the file is used.';


--
-- Name: COLUMN file_usage.id; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN file_usage.id IS 'The primary key of the object using the file.';


--
-- Name: COLUMN file_usage.count; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN file_usage.count IS 'The number of times this file is used by this object.';


--
-- Name: filter; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE filter (
    format character varying(255) NOT NULL,
    module character varying(64) DEFAULT ''::character varying NOT NULL,
    name character varying(32) DEFAULT ''::character varying NOT NULL,
    weight integer DEFAULT 0 NOT NULL,
    status integer DEFAULT 0 NOT NULL,
    settings bytea
);


ALTER TABLE public.filter OWNER TO drupal;

--
-- Name: TABLE filter; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE filter IS 'Table that maps filters (HTML corrector) to text formats (Filtered HTML).';


--
-- Name: COLUMN filter.format; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN filter.format IS 'Foreign key: The filter_format.format to which this filter is assigned.';


--
-- Name: COLUMN filter.module; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN filter.module IS 'The origin module of the filter.';


--
-- Name: COLUMN filter.name; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN filter.name IS 'Name of the filter being referenced.';


--
-- Name: COLUMN filter.weight; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN filter.weight IS 'Weight of filter within format.';


--
-- Name: COLUMN filter.status; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN filter.status IS 'Filter enabled status. (1 = enabled, 0 = disabled)';


--
-- Name: COLUMN filter.settings; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN filter.settings IS 'A serialized array of name value pairs that store the filter settings for the specific format.';


--
-- Name: filter_format; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE filter_format (
    format character varying(255) NOT NULL,
    name character varying(255) DEFAULT ''::character varying NOT NULL,
    cache smallint DEFAULT 0 NOT NULL,
    status integer DEFAULT 1 NOT NULL,
    weight integer DEFAULT 0 NOT NULL,
    CONSTRAINT filter_format_status_check CHECK ((status >= 0))
);


ALTER TABLE public.filter_format OWNER TO drupal;

--
-- Name: TABLE filter_format; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE filter_format IS 'Stores text formats: custom groupings of filters, such as Filtered HTML.';


--
-- Name: COLUMN filter_format.format; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN filter_format.format IS 'Primary Key: Unique machine name of the format.';


--
-- Name: COLUMN filter_format.name; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN filter_format.name IS 'Name of the text format (Filtered HTML).';


--
-- Name: COLUMN filter_format.cache; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN filter_format.cache IS 'Flag to indicate whether format is cacheable. (1 = cacheable, 0 = not cacheable)';


--
-- Name: COLUMN filter_format.status; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN filter_format.status IS 'The status of the text format. (1 = enabled, 0 = disabled)';


--
-- Name: COLUMN filter_format.weight; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN filter_format.weight IS 'Weight of text format to use when listing.';


--
-- Name: flood; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE flood (
    fid integer NOT NULL,
    event character varying(64) DEFAULT ''::character varying NOT NULL,
    identifier character varying(128) DEFAULT ''::character varying NOT NULL,
    "timestamp" integer DEFAULT 0 NOT NULL,
    expiration integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.flood OWNER TO drupal;

--
-- Name: TABLE flood; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE flood IS 'Flood controls the threshold of events, such as the number of contact attempts.';


--
-- Name: COLUMN flood.fid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN flood.fid IS 'Unique flood event ID.';


--
-- Name: COLUMN flood.event; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN flood.event IS 'Name of event (e.g. contact).';


--
-- Name: COLUMN flood.identifier; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN flood.identifier IS 'Identifier of the visitor, such as an IP address or hostname.';


--
-- Name: COLUMN flood."timestamp"; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN flood."timestamp" IS 'Timestamp of the event.';


--
-- Name: COLUMN flood.expiration; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN flood.expiration IS 'Expiration timestamp. Expired events are purged on cron run.';


--
-- Name: flood_fid_seq; Type: SEQUENCE; Schema: public; Owner: drupal
--

CREATE SEQUENCE flood_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.flood_fid_seq OWNER TO drupal;

--
-- Name: flood_fid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: drupal
--

ALTER SEQUENCE flood_fid_seq OWNED BY flood.fid;


--
-- Name: history; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE history (
    uid integer DEFAULT 0 NOT NULL,
    nid integer DEFAULT 0 NOT NULL,
    "timestamp" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.history OWNER TO drupal;

--
-- Name: TABLE history; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE history IS 'A record of which users have read which nodes.';


--
-- Name: COLUMN history.uid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN history.uid IS 'The users.uid that read the node nid.';


--
-- Name: COLUMN history.nid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN history.nid IS 'The node.nid that was read.';


--
-- Name: COLUMN history."timestamp"; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN history."timestamp" IS 'The Unix timestamp at which the read occurred.';


--
-- Name: l10n_update_file; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE l10n_update_file (
    project character varying(50) NOT NULL,
    language character varying(12) NOT NULL,
    type character varying(50) DEFAULT ''::character varying NOT NULL,
    filename character varying(255) DEFAULT ''::character varying NOT NULL,
    fileurl character varying(255) DEFAULT ''::character varying NOT NULL,
    uri character varying(255) DEFAULT ''::character varying NOT NULL,
    "timestamp" integer DEFAULT 0,
    version character varying(128) DEFAULT ''::character varying NOT NULL,
    status integer DEFAULT 1 NOT NULL,
    last_checked integer DEFAULT 0
);


ALTER TABLE public.l10n_update_file OWNER TO drupal;

--
-- Name: TABLE l10n_update_file; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE l10n_update_file IS 'File and download information for project translations.';


--
-- Name: COLUMN l10n_update_file.project; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN l10n_update_file.project IS 'A unique short name to identify the project.';


--
-- Name: COLUMN l10n_update_file.language; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN l10n_update_file.language IS 'Reference to the languages.language for this translation.';


--
-- Name: COLUMN l10n_update_file.type; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN l10n_update_file.type IS 'File origin: download or localfile';


--
-- Name: COLUMN l10n_update_file.filename; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN l10n_update_file.filename IS 'Link to translation file for download.';


--
-- Name: COLUMN l10n_update_file.fileurl; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN l10n_update_file.fileurl IS 'Link to translation file for download.';


--
-- Name: COLUMN l10n_update_file.uri; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN l10n_update_file.uri IS 'File system path for importing the file.';


--
-- Name: COLUMN l10n_update_file."timestamp"; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN l10n_update_file."timestamp" IS 'Unix timestamp of the time the file was downloaded or saved to disk. Zero if not yet downloaded';


--
-- Name: COLUMN l10n_update_file.version; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN l10n_update_file.version IS 'Version tag of the downloaded file.';


--
-- Name: COLUMN l10n_update_file.status; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN l10n_update_file.status IS 'Status flag. TBD';


--
-- Name: COLUMN l10n_update_file.last_checked; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN l10n_update_file.last_checked IS 'Unix timestamp of the last time this translation was downloaded from or checked at remote server and confirmed to be the most recent release available.';


--
-- Name: l10n_update_project; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE l10n_update_project (
    name character varying(50) NOT NULL,
    project_type character varying(50) NOT NULL,
    core character varying(128) DEFAULT ''::character varying NOT NULL,
    version character varying(128) DEFAULT ''::character varying NOT NULL,
    l10n_server character varying(255) DEFAULT ''::character varying NOT NULL,
    l10n_path character varying(255) DEFAULT ''::character varying NOT NULL,
    status integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.l10n_update_project OWNER TO drupal;

--
-- Name: TABLE l10n_update_project; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE l10n_update_project IS 'Update information for project translations.';


--
-- Name: COLUMN l10n_update_project.name; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN l10n_update_project.name IS 'A unique short name to identify the project.';


--
-- Name: COLUMN l10n_update_project.project_type; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN l10n_update_project.project_type IS 'Project type, may be core, module, theme';


--
-- Name: COLUMN l10n_update_project.core; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN l10n_update_project.core IS 'Core compatibility string for this project.';


--
-- Name: COLUMN l10n_update_project.version; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN l10n_update_project.version IS 'Human readable name for project used on the interface.';


--
-- Name: COLUMN l10n_update_project.l10n_server; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN l10n_update_project.l10n_server IS 'Localization server for this project.';


--
-- Name: COLUMN l10n_update_project.l10n_path; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN l10n_update_project.l10n_path IS 'Server path this project updates.';


--
-- Name: COLUMN l10n_update_project.status; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN l10n_update_project.status IS 'Status flag. TBD';


--
-- Name: languages; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE languages (
    language character varying(12) DEFAULT ''::character varying NOT NULL,
    name character varying(64) DEFAULT ''::character varying NOT NULL,
    native character varying(64) DEFAULT ''::character varying NOT NULL,
    direction integer DEFAULT 0 NOT NULL,
    enabled integer DEFAULT 0 NOT NULL,
    plurals integer DEFAULT 0 NOT NULL,
    formula character varying(255) DEFAULT ''::character varying NOT NULL,
    domain character varying(128) DEFAULT ''::character varying NOT NULL,
    prefix character varying(128) DEFAULT ''::character varying NOT NULL,
    weight integer DEFAULT 0 NOT NULL,
    javascript character varying(64) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.languages OWNER TO drupal;

--
-- Name: TABLE languages; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE languages IS 'List of all available languages in the system.';


--
-- Name: COLUMN languages.language; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN languages.language IS 'Language code, e.g. ''de'' or ''en-US''.';


--
-- Name: COLUMN languages.name; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN languages.name IS 'Language name in English.';


--
-- Name: COLUMN languages.native; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN languages.native IS 'Native language name.';


--
-- Name: COLUMN languages.direction; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN languages.direction IS 'Direction of language (Left-to-Right = 0, Right-to-Left = 1).';


--
-- Name: COLUMN languages.enabled; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN languages.enabled IS 'Enabled flag (1 = Enabled, 0 = Disabled).';


--
-- Name: COLUMN languages.plurals; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN languages.plurals IS 'Number of plural indexes in this language.';


--
-- Name: COLUMN languages.formula; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN languages.formula IS 'Plural formula in PHP code to evaluate to get plural indexes.';


--
-- Name: COLUMN languages.domain; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN languages.domain IS 'Domain to use for this language.';


--
-- Name: COLUMN languages.prefix; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN languages.prefix IS 'Path prefix to use for this language.';


--
-- Name: COLUMN languages.weight; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN languages.weight IS 'Weight, used in lists of languages.';


--
-- Name: COLUMN languages.javascript; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN languages.javascript IS 'Location of JavaScript translation file.';


--
-- Name: locales_source; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE locales_source (
    lid integer NOT NULL,
    location text,
    textgroup character varying(255) DEFAULT 'default'::character varying NOT NULL,
    source text NOT NULL,
    context character varying(255) DEFAULT ''::character varying NOT NULL,
    version character varying(20) DEFAULT 'none'::character varying NOT NULL
);


ALTER TABLE public.locales_source OWNER TO drupal;

--
-- Name: TABLE locales_source; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE locales_source IS 'List of English source strings.';


--
-- Name: COLUMN locales_source.lid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN locales_source.lid IS 'Unique identifier of this string.';


--
-- Name: COLUMN locales_source.location; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN locales_source.location IS 'Drupal path in case of online discovered translations or file path in case of imported strings.';


--
-- Name: COLUMN locales_source.textgroup; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN locales_source.textgroup IS 'A module defined group of translations, see hook_locale().';


--
-- Name: COLUMN locales_source.source; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN locales_source.source IS 'The original string in English.';


--
-- Name: COLUMN locales_source.context; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN locales_source.context IS 'The context this string applies to.';


--
-- Name: COLUMN locales_source.version; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN locales_source.version IS 'Version of Drupal, where the string was last used (for locales optimization).';


--
-- Name: locales_source_lid_seq; Type: SEQUENCE; Schema: public; Owner: drupal
--

CREATE SEQUENCE locales_source_lid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.locales_source_lid_seq OWNER TO drupal;

--
-- Name: locales_source_lid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: drupal
--

ALTER SEQUENCE locales_source_lid_seq OWNED BY locales_source.lid;


--
-- Name: locales_target; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE locales_target (
    lid integer DEFAULT 0 NOT NULL,
    translation text NOT NULL,
    language character varying(12) DEFAULT ''::character varying NOT NULL,
    plid integer DEFAULT 0 NOT NULL,
    plural integer DEFAULT 0 NOT NULL,
    l10n_status integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.locales_target OWNER TO drupal;

--
-- Name: TABLE locales_target; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE locales_target IS 'Stores translated versions of strings.';


--
-- Name: COLUMN locales_target.lid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN locales_target.lid IS 'Source string ID. References locales_source.lid.';


--
-- Name: COLUMN locales_target.translation; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN locales_target.translation IS 'Translation string value in this language.';


--
-- Name: COLUMN locales_target.language; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN locales_target.language IS 'Language code. References languages.language.';


--
-- Name: COLUMN locales_target.plid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN locales_target.plid IS 'Parent lid (lid of the previous string in the plural chain) in case of plural strings. References locales_source.lid.';


--
-- Name: COLUMN locales_target.plural; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN locales_target.plural IS 'Plural index number in case of plural strings.';


--
-- Name: menu_links; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE menu_links (
    menu_name character varying(32) DEFAULT ''::character varying NOT NULL,
    mlid integer NOT NULL,
    plid bigint DEFAULT 0 NOT NULL,
    link_path character varying(255) DEFAULT ''::character varying NOT NULL,
    router_path character varying(255) DEFAULT ''::character varying NOT NULL,
    link_title character varying(255) DEFAULT ''::character varying NOT NULL,
    options bytea,
    module character varying(255) DEFAULT 'system'::character varying NOT NULL,
    hidden smallint DEFAULT 0 NOT NULL,
    external smallint DEFAULT 0 NOT NULL,
    has_children smallint DEFAULT 0 NOT NULL,
    expanded smallint DEFAULT 0 NOT NULL,
    weight integer DEFAULT 0 NOT NULL,
    depth smallint DEFAULT 0 NOT NULL,
    customized smallint DEFAULT 0 NOT NULL,
    p1 bigint DEFAULT 0 NOT NULL,
    p2 bigint DEFAULT 0 NOT NULL,
    p3 bigint DEFAULT 0 NOT NULL,
    p4 bigint DEFAULT 0 NOT NULL,
    p5 bigint DEFAULT 0 NOT NULL,
    p6 bigint DEFAULT 0 NOT NULL,
    p7 bigint DEFAULT 0 NOT NULL,
    p8 bigint DEFAULT 0 NOT NULL,
    p9 bigint DEFAULT 0 NOT NULL,
    updated smallint DEFAULT 0 NOT NULL,
    CONSTRAINT menu_links_mlid_check CHECK ((mlid >= 0)),
    CONSTRAINT menu_links_p1_check CHECK ((p1 >= 0)),
    CONSTRAINT menu_links_p2_check CHECK ((p2 >= 0)),
    CONSTRAINT menu_links_p3_check CHECK ((p3 >= 0)),
    CONSTRAINT menu_links_p4_check CHECK ((p4 >= 0)),
    CONSTRAINT menu_links_p5_check CHECK ((p5 >= 0)),
    CONSTRAINT menu_links_p6_check CHECK ((p6 >= 0)),
    CONSTRAINT menu_links_p7_check CHECK ((p7 >= 0)),
    CONSTRAINT menu_links_p8_check CHECK ((p8 >= 0)),
    CONSTRAINT menu_links_p9_check CHECK ((p9 >= 0)),
    CONSTRAINT menu_links_plid_check CHECK ((plid >= 0))
);


ALTER TABLE public.menu_links OWNER TO drupal;

--
-- Name: TABLE menu_links; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE menu_links IS 'Contains the individual links within a menu.';


--
-- Name: COLUMN menu_links.menu_name; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.menu_name IS 'The menu name. All links with the same menu name (such as ''navigation'') are part of the same menu.';


--
-- Name: COLUMN menu_links.mlid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.mlid IS 'The menu link ID (mlid) is the integer primary key.';


--
-- Name: COLUMN menu_links.plid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.plid IS 'The parent link ID (plid) is the mlid of the link above in the hierarchy, or zero if the link is at the top level in its menu.';


--
-- Name: COLUMN menu_links.link_path; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.link_path IS 'The Drupal path or external path this link points to.';


--
-- Name: COLUMN menu_links.router_path; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.router_path IS 'For links corresponding to a Drupal path (external = 0), this connects the link to a menu_router.path for joins.';


--
-- Name: COLUMN menu_links.link_title; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.link_title IS 'The text displayed for the link, which may be modified by a title callback stored in menu_router.';


--
-- Name: COLUMN menu_links.options; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.options IS 'A serialized array of options to be passed to the url() or l() function, such as a query string or HTML attributes.';


--
-- Name: COLUMN menu_links.module; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.module IS 'The name of the module that generated this link.';


--
-- Name: COLUMN menu_links.hidden; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.hidden IS 'A flag for whether the link should be rendered in menus. (1 = a disabled menu item that may be shown on admin screens, -1 = a menu callback, 0 = a normal, visible link)';


--
-- Name: COLUMN menu_links.external; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.external IS 'A flag to indicate if the link points to a full URL starting with a protocol,::text like http:// (1 = external, 0 = internal).';


--
-- Name: COLUMN menu_links.has_children; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.has_children IS 'Flag indicating whether any links have this link as a parent (1 = children exist, 0 = no children).';


--
-- Name: COLUMN menu_links.expanded; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.expanded IS 'Flag for whether this link should be rendered as expanded in menus - expanded links always have their child links displayed, instead of only when the link is in the active trail (1 = expanded, 0 = not expanded)';


--
-- Name: COLUMN menu_links.weight; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.weight IS 'Link weight among links in the same menu at the same depth.';


--
-- Name: COLUMN menu_links.depth; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.depth IS 'The depth relative to the top level. A link with plid == 0 will have depth == 1.';


--
-- Name: COLUMN menu_links.customized; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.customized IS 'A flag to indicate that the user has manually created or edited the link (1 = customized, 0 = not customized).';


--
-- Name: COLUMN menu_links.p1; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.p1 IS 'The first mlid in the materialized path. If N = depth, then pN must equal the mlid. If depth > 1 then p(N-1) must equal the plid. All pX where X > depth must equal zero. The columns p1 .. p9 are also called the parents.';


--
-- Name: COLUMN menu_links.p2; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.p2 IS 'The second mlid in the materialized path. See p1.';


--
-- Name: COLUMN menu_links.p3; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.p3 IS 'The third mlid in the materialized path. See p1.';


--
-- Name: COLUMN menu_links.p4; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.p4 IS 'The fourth mlid in the materialized path. See p1.';


--
-- Name: COLUMN menu_links.p5; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.p5 IS 'The fifth mlid in the materialized path. See p1.';


--
-- Name: COLUMN menu_links.p6; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.p6 IS 'The sixth mlid in the materialized path. See p1.';


--
-- Name: COLUMN menu_links.p7; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.p7 IS 'The seventh mlid in the materialized path. See p1.';


--
-- Name: COLUMN menu_links.p8; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.p8 IS 'The eighth mlid in the materialized path. See p1.';


--
-- Name: COLUMN menu_links.p9; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.p9 IS 'The ninth mlid in the materialized path. See p1.';


--
-- Name: COLUMN menu_links.updated; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_links.updated IS 'Flag that indicates that this link was generated during the update from Drupal 5.';


--
-- Name: menu_links_mlid_seq; Type: SEQUENCE; Schema: public; Owner: drupal
--

CREATE SEQUENCE menu_links_mlid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menu_links_mlid_seq OWNER TO drupal;

--
-- Name: menu_links_mlid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: drupal
--

ALTER SEQUENCE menu_links_mlid_seq OWNED BY menu_links.mlid;


--
-- Name: menu_router; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE menu_router (
    path character varying(255) DEFAULT ''::character varying NOT NULL,
    load_functions bytea NOT NULL,
    to_arg_functions bytea NOT NULL,
    access_callback character varying(255) DEFAULT ''::character varying NOT NULL,
    access_arguments bytea,
    page_callback character varying(255) DEFAULT ''::character varying NOT NULL,
    page_arguments bytea,
    delivery_callback character varying(255) DEFAULT ''::character varying NOT NULL,
    fit integer DEFAULT 0 NOT NULL,
    number_parts smallint DEFAULT 0 NOT NULL,
    context integer DEFAULT 0 NOT NULL,
    tab_parent character varying(255) DEFAULT ''::character varying NOT NULL,
    tab_root character varying(255) DEFAULT ''::character varying NOT NULL,
    title character varying(255) DEFAULT ''::character varying NOT NULL,
    title_callback character varying(255) DEFAULT ''::character varying NOT NULL,
    title_arguments character varying(255) DEFAULT ''::character varying NOT NULL,
    theme_callback character varying(255) DEFAULT ''::character varying NOT NULL,
    theme_arguments character varying(255) DEFAULT ''::character varying NOT NULL,
    type integer DEFAULT 0 NOT NULL,
    description text NOT NULL,
    "position" character varying(255) DEFAULT ''::character varying NOT NULL,
    weight integer DEFAULT 0 NOT NULL,
    include_file text
);


ALTER TABLE public.menu_router OWNER TO drupal;

--
-- Name: TABLE menu_router; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE menu_router IS 'Maps paths to various callbacks (access, page and title)';


--
-- Name: COLUMN menu_router.path; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_router.path IS 'Primary Key: the Drupal path this entry describes';


--
-- Name: COLUMN menu_router.load_functions; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_router.load_functions IS 'A serialized array of function names (like node_load) to be called to load an object corresponding to a part of the current path.';


--
-- Name: COLUMN menu_router.to_arg_functions; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_router.to_arg_functions IS 'A serialized array of function names (like user_uid_optional_to_arg) to be called to replace a part of the router path with another string.';


--
-- Name: COLUMN menu_router.access_callback; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_router.access_callback IS 'The callback which determines the access to this router path. Defaults to user_access.';


--
-- Name: COLUMN menu_router.access_arguments; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_router.access_arguments IS 'A serialized array of arguments for the access callback.';


--
-- Name: COLUMN menu_router.page_callback; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_router.page_callback IS 'The name of the function that renders the page.';


--
-- Name: COLUMN menu_router.page_arguments; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_router.page_arguments IS 'A serialized array of arguments for the page callback.';


--
-- Name: COLUMN menu_router.delivery_callback; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_router.delivery_callback IS 'The name of the function that sends the result of the page_callback function to the browser.';


--
-- Name: COLUMN menu_router.fit; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_router.fit IS 'A numeric representation of how specific the path is.';


--
-- Name: COLUMN menu_router.number_parts; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_router.number_parts IS 'Number of parts in this router path.';


--
-- Name: COLUMN menu_router.context; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_router.context IS 'Only for local tasks (tabs) - the context of a local task to control its placement.';


--
-- Name: COLUMN menu_router.tab_parent; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_router.tab_parent IS 'Only for local tasks (tabs) - the router path of the parent page (which may also be a local task).';


--
-- Name: COLUMN menu_router.tab_root; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_router.tab_root IS 'Router path of the closest non-tab parent page. For pages that are not local tasks, this will be the same as the path.';


--
-- Name: COLUMN menu_router.title; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_router.title IS 'The title for the current page, or the title for the tab if this is a local task.';


--
-- Name: COLUMN menu_router.title_callback; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_router.title_callback IS 'A function which will alter the title. Defaults to t()';


--
-- Name: COLUMN menu_router.title_arguments; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_router.title_arguments IS 'A serialized array of arguments for the title callback. If empty, the title will be used as the sole argument for the title callback.';


--
-- Name: COLUMN menu_router.theme_callback; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_router.theme_callback IS 'A function which returns the name of the theme that will be used to render this page. If left empty, the default theme will be used.';


--
-- Name: COLUMN menu_router.theme_arguments; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_router.theme_arguments IS 'A serialized array of arguments for the theme callback.';


--
-- Name: COLUMN menu_router.type; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_router.type IS 'Numeric representation of the type of the menu item,::text like MENU_LOCAL_TASK.';


--
-- Name: COLUMN menu_router.description; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_router.description IS 'A description of this item.';


--
-- Name: COLUMN menu_router."position"; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_router."position" IS 'The position of the block (left or right) on the system administration page for this item.';


--
-- Name: COLUMN menu_router.weight; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_router.weight IS 'Weight of the element. Lighter weights are higher up, heavier weights go down.';


--
-- Name: COLUMN menu_router.include_file; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN menu_router.include_file IS 'The file to include for this element, usually the page callback function lives in this file.';


--
-- Name: node; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE node (
    nid integer NOT NULL,
    vid bigint,
    type character varying(32) DEFAULT ''::character varying NOT NULL,
    language character varying(12) DEFAULT ''::character varying NOT NULL,
    title character varying(255) DEFAULT ''::character varying NOT NULL,
    uid integer DEFAULT 0 NOT NULL,
    status integer DEFAULT 1 NOT NULL,
    created integer DEFAULT 0 NOT NULL,
    changed integer DEFAULT 0 NOT NULL,
    comment integer DEFAULT 0 NOT NULL,
    promote integer DEFAULT 0 NOT NULL,
    sticky integer DEFAULT 0 NOT NULL,
    tnid bigint DEFAULT 0 NOT NULL,
    translate integer DEFAULT 0 NOT NULL,
    CONSTRAINT node_nid_check CHECK ((nid >= 0)),
    CONSTRAINT node_tnid_check CHECK ((tnid >= 0)),
    CONSTRAINT node_vid_check CHECK ((vid >= 0))
);


ALTER TABLE public.node OWNER TO drupal;

--
-- Name: TABLE node; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE node IS 'The base table for nodes.';


--
-- Name: COLUMN node.nid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node.nid IS 'The primary identifier for a node.';


--
-- Name: COLUMN node.vid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node.vid IS 'The current node_revision.vid version identifier.';


--
-- Name: COLUMN node.type; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node.type IS 'The node_type.type of this node.';


--
-- Name: COLUMN node.language; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node.language IS 'The languages.language of this node.';


--
-- Name: COLUMN node.title; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node.title IS 'The title of this node, always treated as non-markup plain text.';


--
-- Name: COLUMN node.uid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node.uid IS 'The users.uid that owns this node; initially, this is the user that created it.';


--
-- Name: COLUMN node.status; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node.status IS 'Boolean indicating whether the node is published (visible to non-administrators).';


--
-- Name: COLUMN node.created; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node.created IS 'The Unix timestamp when the node was created.';


--
-- Name: COLUMN node.changed; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node.changed IS 'The Unix timestamp when the node was most recently saved.';


--
-- Name: COLUMN node.comment; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node.comment IS 'Whether comments are allowed on this node: 0 = no, 1 = closed (read only), 2 = open (read/write).';


--
-- Name: COLUMN node.promote; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node.promote IS 'Boolean indicating whether the node should be displayed on the front page.';


--
-- Name: COLUMN node.sticky; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node.sticky IS 'Boolean indicating whether the node should be displayed at the top of lists in which it appears.';


--
-- Name: COLUMN node.tnid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node.tnid IS 'The translation set id for this node, which equals the node id of the source post in each set.';


--
-- Name: COLUMN node.translate; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node.translate IS 'A boolean indicating whether this translation page needs to be updated.';


--
-- Name: node_access; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE node_access (
    nid bigint DEFAULT 0 NOT NULL,
    gid bigint DEFAULT 0 NOT NULL,
    realm character varying(255) DEFAULT ''::character varying NOT NULL,
    grant_view integer DEFAULT 0 NOT NULL,
    grant_update integer DEFAULT 0 NOT NULL,
    grant_delete integer DEFAULT 0 NOT NULL,
    CONSTRAINT node_access_gid_check CHECK ((gid >= 0)),
    CONSTRAINT node_access_grant_delete_check CHECK ((grant_delete >= 0)),
    CONSTRAINT node_access_grant_update_check CHECK ((grant_update >= 0)),
    CONSTRAINT node_access_grant_view_check CHECK ((grant_view >= 0)),
    CONSTRAINT node_access_nid_check CHECK ((nid >= 0))
);


ALTER TABLE public.node_access OWNER TO drupal;

--
-- Name: TABLE node_access; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE node_access IS 'Identifies which realm/grant pairs a user must possess in order to view, update, or delete specific nodes.';


--
-- Name: COLUMN node_access.nid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_access.nid IS 'The node.nid this record affects.';


--
-- Name: COLUMN node_access.gid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_access.gid IS 'The grant ID a user must possess in the specified realm to gain this row''s privileges on the node.';


--
-- Name: COLUMN node_access.realm; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_access.realm IS 'The realm in which the user must possess the grant ID. Each node access node can define one or more realms.';


--
-- Name: COLUMN node_access.grant_view; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_access.grant_view IS 'Boolean indicating whether a user with the realm/grant pair can view this node.';


--
-- Name: COLUMN node_access.grant_update; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_access.grant_update IS 'Boolean indicating whether a user with the realm/grant pair can edit this node.';


--
-- Name: COLUMN node_access.grant_delete; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_access.grant_delete IS 'Boolean indicating whether a user with the realm/grant pair can delete this node.';


--
-- Name: node_nid_seq; Type: SEQUENCE; Schema: public; Owner: drupal
--

CREATE SEQUENCE node_nid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.node_nid_seq OWNER TO drupal;

--
-- Name: node_nid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: drupal
--

ALTER SEQUENCE node_nid_seq OWNED BY node.nid;


--
-- Name: node_revision; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE node_revision (
    nid bigint DEFAULT 0 NOT NULL,
    vid integer NOT NULL,
    uid integer DEFAULT 0 NOT NULL,
    title character varying(255) DEFAULT ''::character varying NOT NULL,
    log text NOT NULL,
    "timestamp" integer DEFAULT 0 NOT NULL,
    status integer DEFAULT 1 NOT NULL,
    comment integer DEFAULT 0 NOT NULL,
    promote integer DEFAULT 0 NOT NULL,
    sticky integer DEFAULT 0 NOT NULL,
    CONSTRAINT node_revision_nid_check CHECK ((nid >= 0)),
    CONSTRAINT node_revision_vid_check CHECK ((vid >= 0))
);


ALTER TABLE public.node_revision OWNER TO drupal;

--
-- Name: TABLE node_revision; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE node_revision IS 'Stores information about each saved version of a node.';


--
-- Name: COLUMN node_revision.nid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_revision.nid IS 'The node this version belongs to.';


--
-- Name: COLUMN node_revision.vid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_revision.vid IS 'The primary identifier for this version.';


--
-- Name: COLUMN node_revision.uid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_revision.uid IS 'The users.uid that created this version.';


--
-- Name: COLUMN node_revision.title; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_revision.title IS 'The title of this version.';


--
-- Name: COLUMN node_revision.log; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_revision.log IS 'The log entry explaining the changes in this version.';


--
-- Name: COLUMN node_revision."timestamp"; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_revision."timestamp" IS 'A Unix timestamp indicating when this version was created.';


--
-- Name: COLUMN node_revision.status; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_revision.status IS 'Boolean indicating whether the node (at the time of this revision) is published (visible to non-administrators).';


--
-- Name: COLUMN node_revision.comment; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_revision.comment IS 'Whether comments are allowed on this node (at the time of this revision): 0 = no, 1 = closed (read only), 2 = open (read/write).';


--
-- Name: COLUMN node_revision.promote; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_revision.promote IS 'Boolean indicating whether the node (at the time of this revision) should be displayed on the front page.';


--
-- Name: COLUMN node_revision.sticky; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_revision.sticky IS 'Boolean indicating whether the node (at the time of this revision) should be displayed at the top of lists in which it appears.';


--
-- Name: node_revision_vid_seq; Type: SEQUENCE; Schema: public; Owner: drupal
--

CREATE SEQUENCE node_revision_vid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.node_revision_vid_seq OWNER TO drupal;

--
-- Name: node_revision_vid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: drupal
--

ALTER SEQUENCE node_revision_vid_seq OWNED BY node_revision.vid;


--
-- Name: node_type; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE node_type (
    type character varying(32) NOT NULL,
    name character varying(255) DEFAULT ''::character varying NOT NULL,
    base character varying(255) NOT NULL,
    module character varying(255) NOT NULL,
    description text NOT NULL,
    help text NOT NULL,
    has_title integer NOT NULL,
    title_label character varying(255) DEFAULT ''::character varying NOT NULL,
    custom smallint DEFAULT 0 NOT NULL,
    modified smallint DEFAULT 0 NOT NULL,
    locked smallint DEFAULT 0 NOT NULL,
    disabled smallint DEFAULT 0 NOT NULL,
    orig_type character varying(255) DEFAULT ''::character varying NOT NULL,
    CONSTRAINT node_type_has_title_check CHECK ((has_title >= 0))
);


ALTER TABLE public.node_type OWNER TO drupal;

--
-- Name: TABLE node_type; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE node_type IS 'Stores information about all defined node types.';


--
-- Name: COLUMN node_type.type; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_type.type IS 'The machine-readable name of this type.';


--
-- Name: COLUMN node_type.name; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_type.name IS 'The human-readable name of this type.';


--
-- Name: COLUMN node_type.base; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_type.base IS 'The base string used to construct callbacks corresponding to this node type.';


--
-- Name: COLUMN node_type.module; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_type.module IS 'The module defining this node type.';


--
-- Name: COLUMN node_type.description; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_type.description IS 'A brief description of this type.';


--
-- Name: COLUMN node_type.help; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_type.help IS 'Help information shown to the user when creating a node of this type.';


--
-- Name: COLUMN node_type.has_title; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_type.has_title IS 'Boolean indicating whether this type uses the node.title field.';


--
-- Name: COLUMN node_type.title_label; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_type.title_label IS 'The label displayed for the title field on the edit form.';


--
-- Name: COLUMN node_type.custom; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_type.custom IS 'A boolean indicating whether this type is defined by a module (FALSE) or by a user via Add content type (TRUE).';


--
-- Name: COLUMN node_type.modified; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_type.modified IS 'A boolean indicating whether this type has been modified by an administrator; currently not used in any way.';


--
-- Name: COLUMN node_type.locked; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_type.locked IS 'A boolean indicating whether the administrator can change the machine name of this type.';


--
-- Name: COLUMN node_type.disabled; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_type.disabled IS 'A boolean indicating whether the node type is disabled.';


--
-- Name: COLUMN node_type.orig_type; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN node_type.orig_type IS 'The original machine-readable name of this node type. This may be different from the current type name if the locked field is 0.';


--
-- Name: queue; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE queue (
    item_id integer NOT NULL,
    name character varying(255) DEFAULT ''::character varying NOT NULL,
    data bytea,
    expire integer DEFAULT 0 NOT NULL,
    created integer DEFAULT 0 NOT NULL,
    CONSTRAINT queue_item_id_check CHECK ((item_id >= 0))
);


ALTER TABLE public.queue OWNER TO drupal;

--
-- Name: TABLE queue; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE queue IS 'Stores items in queues.';


--
-- Name: COLUMN queue.item_id; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN queue.item_id IS 'Primary Key: Unique item ID.';


--
-- Name: COLUMN queue.name; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN queue.name IS 'The queue name.';


--
-- Name: COLUMN queue.data; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN queue.data IS 'The arbitrary data for the item.';


--
-- Name: COLUMN queue.expire; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN queue.expire IS 'Timestamp when the claim lease expires on the item.';


--
-- Name: COLUMN queue.created; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN queue.created IS 'Timestamp when the item was created.';


--
-- Name: queue_item_id_seq; Type: SEQUENCE; Schema: public; Owner: drupal
--

CREATE SEQUENCE queue_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.queue_item_id_seq OWNER TO drupal;

--
-- Name: queue_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: drupal
--

ALTER SEQUENCE queue_item_id_seq OWNED BY queue.item_id;


--
-- Name: registry; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE registry (
    name character varying(255) DEFAULT ''::character varying NOT NULL,
    type character varying(9) DEFAULT ''::character varying NOT NULL,
    filename character varying(255) NOT NULL,
    module character varying(255) DEFAULT ''::character varying NOT NULL,
    weight integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.registry OWNER TO drupal;

--
-- Name: TABLE registry; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE registry IS 'Each record is a function, class, or interface name and the file it is in.';


--
-- Name: COLUMN registry.name; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN registry.name IS 'The name of the function, class, or interface.';


--
-- Name: COLUMN registry.type; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN registry.type IS 'Either function or class or interface.';


--
-- Name: COLUMN registry.filename; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN registry.filename IS 'Name of the file.';


--
-- Name: COLUMN registry.module; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN registry.module IS 'Name of the module the file belongs to.';


--
-- Name: COLUMN registry.weight; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN registry.weight IS 'The order in which this module''s hooks should be invoked relative to other modules. Equal-weighted modules are ordered by name.';


--
-- Name: registry_file; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE registry_file (
    filename character varying(255) NOT NULL,
    hash character varying(64) NOT NULL
);


ALTER TABLE public.registry_file OWNER TO drupal;

--
-- Name: TABLE registry_file; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE registry_file IS 'Files parsed to build the registry.';


--
-- Name: COLUMN registry_file.filename; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN registry_file.filename IS 'Path to the file.';


--
-- Name: COLUMN registry_file.hash; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN registry_file.hash IS 'sha-256 hash of the file''s contents when last parsed.';


--
-- Name: role; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE role (
    rid integer NOT NULL,
    name character varying(64) DEFAULT ''::character varying NOT NULL,
    weight integer DEFAULT 0 NOT NULL,
    CONSTRAINT role_rid_check CHECK ((rid >= 0))
);


ALTER TABLE public.role OWNER TO drupal;

--
-- Name: TABLE role; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE role IS 'Stores user roles.';


--
-- Name: COLUMN role.rid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN role.rid IS 'Primary Key: Unique role ID.';


--
-- Name: COLUMN role.name; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN role.name IS 'Unique role name.';


--
-- Name: COLUMN role.weight; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN role.weight IS 'The weight of this role in listings and the user interface.';


--
-- Name: role_permission; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE role_permission (
    rid bigint NOT NULL,
    permission character varying(128) DEFAULT ''::character varying NOT NULL,
    module character varying(255) DEFAULT ''::character varying NOT NULL,
    CONSTRAINT role_permission_rid_check CHECK ((rid >= 0))
);


ALTER TABLE public.role_permission OWNER TO drupal;

--
-- Name: TABLE role_permission; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE role_permission IS 'Stores the permissions assigned to user roles.';


--
-- Name: COLUMN role_permission.rid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN role_permission.rid IS 'Foreign Key: role.rid.';


--
-- Name: COLUMN role_permission.permission; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN role_permission.permission IS 'A single permission granted to the role identified by rid.';


--
-- Name: COLUMN role_permission.module; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN role_permission.module IS 'The module declaring the permission.';


--
-- Name: role_rid_seq; Type: SEQUENCE; Schema: public; Owner: drupal
--

CREATE SEQUENCE role_rid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_rid_seq OWNER TO drupal;

--
-- Name: role_rid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: drupal
--

ALTER SEQUENCE role_rid_seq OWNED BY role.rid;


--
-- Name: semaphore; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE semaphore (
    name character varying(255) DEFAULT ''::character varying NOT NULL,
    value character varying(255) DEFAULT ''::character varying NOT NULL,
    expire double precision NOT NULL
);


ALTER TABLE public.semaphore OWNER TO drupal;

--
-- Name: TABLE semaphore; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE semaphore IS 'Table for holding semaphores, locks, flags, etc. that cannot be stored as Drupal variables since they must not be cached.';


--
-- Name: COLUMN semaphore.name; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN semaphore.name IS 'Primary Key: Unique name.';


--
-- Name: COLUMN semaphore.value; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN semaphore.value IS 'A value for the semaphore.';


--
-- Name: COLUMN semaphore.expire; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN semaphore.expire IS 'A Unix timestamp with microseconds indicating when the semaphore should expire.';


--
-- Name: sequences; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE sequences (
    value integer NOT NULL,
    CONSTRAINT sequences_value_check CHECK ((value >= 0))
);


ALTER TABLE public.sequences OWNER TO drupal;

--
-- Name: TABLE sequences; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE sequences IS 'Stores IDs.';


--
-- Name: COLUMN sequences.value; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN sequences.value IS 'The value of the sequence.';


--
-- Name: sequences_value_seq; Type: SEQUENCE; Schema: public; Owner: drupal
--

CREATE SEQUENCE sequences_value_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sequences_value_seq OWNER TO drupal;

--
-- Name: sequences_value_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: drupal
--

ALTER SEQUENCE sequences_value_seq OWNED BY sequences.value;


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE sessions (
    uid bigint NOT NULL,
    sid character varying(128) NOT NULL,
    ssid character varying(128) DEFAULT ''::character varying NOT NULL,
    hostname character varying(128) DEFAULT ''::character varying NOT NULL,
    "timestamp" integer DEFAULT 0 NOT NULL,
    cache integer DEFAULT 0 NOT NULL,
    session bytea,
    CONSTRAINT sessions_uid_check CHECK ((uid >= 0))
);


ALTER TABLE public.sessions OWNER TO drupal;

--
-- Name: TABLE sessions; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE sessions IS 'Drupal''s session handlers read and write into the sessions table. Each record represents a user session, either anonymous or authenticated.';


--
-- Name: COLUMN sessions.uid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN sessions.uid IS 'The users.uid corresponding to a session, or 0 for anonymous user.';


--
-- Name: COLUMN sessions.sid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN sessions.sid IS 'A session ID. The value is generated by Drupal''s session handlers.';


--
-- Name: COLUMN sessions.ssid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN sessions.ssid IS 'Secure session ID. The value is generated by Drupal''s session handlers.';


--
-- Name: COLUMN sessions.hostname; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN sessions.hostname IS 'The IP address that last used this session ID (sid).';


--
-- Name: COLUMN sessions."timestamp"; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN sessions."timestamp" IS 'The Unix timestamp when this session last requested a page. Old records are purged by PHP automatically.';


--
-- Name: COLUMN sessions.cache; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN sessions.cache IS 'The time of this user''s last post. This is used when the site has specified a minimum_cache_lifetime. See cache_get().';


--
-- Name: COLUMN sessions.session; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN sessions.session IS 'The serialized contents of $_SESSION, an array of name/value pairs that persists across page requests by this session ID. Drupal loads $_SESSION from here at the start of each request and saves it at the end.';


--
-- Name: system; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE system (
    filename character varying(255) DEFAULT ''::character varying NOT NULL,
    name character varying(255) DEFAULT ''::character varying NOT NULL,
    type character varying(12) DEFAULT ''::character varying NOT NULL,
    owner character varying(255) DEFAULT ''::character varying NOT NULL,
    status integer DEFAULT 0 NOT NULL,
    bootstrap integer DEFAULT 0 NOT NULL,
    schema_version smallint DEFAULT (-1) NOT NULL,
    weight integer DEFAULT 0 NOT NULL,
    info bytea
);


ALTER TABLE public.system OWNER TO drupal;

--
-- Name: TABLE system; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE system IS 'A list of all modules, themes, and theme engines that are or have been installed in Drupal''s file system.';


--
-- Name: COLUMN system.filename; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN system.filename IS 'The path of the primary file for this item, relative to the Drupal root; e.g. modules/node/node.module.';


--
-- Name: COLUMN system.name; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN system.name IS 'The name of the item; e.g. node.';


--
-- Name: COLUMN system.type; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN system.type IS 'The type of the item, either module, theme, or theme_engine.';


--
-- Name: COLUMN system.owner; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN system.owner IS 'A theme''s ''parent'' . Can be either a theme or an engine.';


--
-- Name: COLUMN system.status; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN system.status IS 'Boolean indicating whether or not this item is enabled.';


--
-- Name: COLUMN system.bootstrap; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN system.bootstrap IS 'Boolean indicating whether this module is loaded during Drupal''s early bootstrapping phase (e.g. even before the page cache is consulted).';


--
-- Name: COLUMN system.schema_version; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN system.schema_version IS 'The module''s database schema version number. -1 if the module is not installed (its tables do not exist); 0 or the largest N of the module''s hook_update_N() function that has either been run or existed when the module was first installed.';


--
-- Name: COLUMN system.weight; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN system.weight IS 'The order in which this module''s hooks should be invoked relative to other modules. Equal-weighted modules are ordered by name.';


--
-- Name: COLUMN system.info; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN system.info IS 'A serialized array containing information from the module''s .info file; keys can include name, description, package, version, core, dependencies, and php.';


--
-- Name: url_alias; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE url_alias (
    pid integer NOT NULL,
    source character varying(255) DEFAULT ''::character varying NOT NULL,
    alias character varying(255) DEFAULT ''::character varying NOT NULL,
    language character varying(12) DEFAULT ''::character varying NOT NULL,
    CONSTRAINT url_alias_pid_check CHECK ((pid >= 0))
);


ALTER TABLE public.url_alias OWNER TO drupal;

--
-- Name: TABLE url_alias; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE url_alias IS 'A list of URL aliases for Drupal paths; a user may visit either the source or destination path.';


--
-- Name: COLUMN url_alias.pid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN url_alias.pid IS 'A unique path alias identifier.';


--
-- Name: COLUMN url_alias.source; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN url_alias.source IS 'The Drupal path this alias is for; e.g. node/12.';


--
-- Name: COLUMN url_alias.alias; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN url_alias.alias IS 'The alias for this path; e.g. title-of-the-story.';


--
-- Name: COLUMN url_alias.language; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN url_alias.language IS 'The language this alias is for; if ''und'', the alias will be used for unknown languages. Each Drupal path can have an alias for each supported language.';


--
-- Name: url_alias_pid_seq; Type: SEQUENCE; Schema: public; Owner: drupal
--

CREATE SEQUENCE url_alias_pid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.url_alias_pid_seq OWNER TO drupal;

--
-- Name: url_alias_pid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: drupal
--

ALTER SEQUENCE url_alias_pid_seq OWNED BY url_alias.pid;


--
-- Name: users; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE users (
    uid bigint DEFAULT 0 NOT NULL,
    name character varying(60) DEFAULT ''::character varying NOT NULL,
    pass character varying(128) DEFAULT ''::character varying NOT NULL,
    mail character varying(254) DEFAULT ''::character varying,
    theme character varying(255) DEFAULT ''::character varying NOT NULL,
    signature character varying(255) DEFAULT ''::character varying NOT NULL,
    signature_format character varying(255),
    created integer DEFAULT 0 NOT NULL,
    access integer DEFAULT 0 NOT NULL,
    login integer DEFAULT 0 NOT NULL,
    status smallint DEFAULT 0 NOT NULL,
    timezone character varying(32),
    language character varying(12) DEFAULT ''::character varying NOT NULL,
    picture integer DEFAULT 0 NOT NULL,
    init character varying(254) DEFAULT ''::character varying,
    data bytea,
    CONSTRAINT users_uid_check CHECK ((uid >= 0))
);


ALTER TABLE public.users OWNER TO drupal;

--
-- Name: TABLE users; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE users IS 'Stores user data.';


--
-- Name: COLUMN users.uid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN users.uid IS 'Primary Key: Unique user ID.';


--
-- Name: COLUMN users.name; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN users.name IS 'Unique user name.';


--
-- Name: COLUMN users.pass; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN users.pass IS 'User''s password (hashed).';


--
-- Name: COLUMN users.mail; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN users.mail IS 'User''s e-mail address.';


--
-- Name: COLUMN users.theme; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN users.theme IS 'User''s default theme.';


--
-- Name: COLUMN users.signature; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN users.signature IS 'User''s signature.';


--
-- Name: COLUMN users.signature_format; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN users.signature_format IS 'The filter_format.format of the signature.';


--
-- Name: COLUMN users.created; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN users.created IS 'Timestamp for when user was created.';


--
-- Name: COLUMN users.access; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN users.access IS 'Timestamp for previous time user accessed the site.';


--
-- Name: COLUMN users.login; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN users.login IS 'Timestamp for user''s last login.';


--
-- Name: COLUMN users.status; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN users.status IS 'Whether the user is active(1) or blocked(0).';


--
-- Name: COLUMN users.timezone; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN users.timezone IS 'User''s time zone.';


--
-- Name: COLUMN users.language; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN users.language IS 'User''s default language.';


--
-- Name: COLUMN users.picture; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN users.picture IS 'Foreign key: file_managed.fid of user''s picture.';


--
-- Name: COLUMN users.init; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN users.init IS 'E-mail address used for initial account creation.';


--
-- Name: COLUMN users.data; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN users.data IS 'A serialized array of name value pairs that are related to the user. Any form values posted during user edit are stored and are loaded into the $user object during user_load(). Use of this field is discouraged and it will likely disappear in a future version of Drupal.';


--
-- Name: users_roles; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE users_roles (
    uid bigint DEFAULT 0 NOT NULL,
    rid bigint DEFAULT 0 NOT NULL,
    CONSTRAINT users_roles_rid_check CHECK ((rid >= 0)),
    CONSTRAINT users_roles_uid_check CHECK ((uid >= 0))
);


ALTER TABLE public.users_roles OWNER TO drupal;

--
-- Name: TABLE users_roles; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE users_roles IS 'Maps users to roles.';


--
-- Name: COLUMN users_roles.uid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN users_roles.uid IS 'Primary Key: users.uid for user.';


--
-- Name: COLUMN users_roles.rid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN users_roles.rid IS 'Primary Key: role.rid for role.';


--
-- Name: variable; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE variable (
    name character varying(128) DEFAULT ''::character varying NOT NULL,
    value bytea NOT NULL
);


ALTER TABLE public.variable OWNER TO drupal;

--
-- Name: TABLE variable; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE variable IS 'Named variable/value pairs created by Drupal core or any other module or theme. All variables are cached in memory at the start of every Drupal request so developers should not be careless about what is stored here.';


--
-- Name: COLUMN variable.name; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN variable.name IS 'The name of the variable.';


--
-- Name: COLUMN variable.value; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN variable.value IS 'The value of the variable.';


--
-- Name: watchdog; Type: TABLE; Schema: public; Owner: drupal; Tablespace: 
--

CREATE TABLE watchdog (
    wid integer NOT NULL,
    uid integer DEFAULT 0 NOT NULL,
    type character varying(64) DEFAULT ''::character varying NOT NULL,
    message text NOT NULL,
    variables bytea NOT NULL,
    severity integer DEFAULT 0 NOT NULL,
    link character varying(255) DEFAULT ''::character varying,
    location text NOT NULL,
    referer text,
    hostname character varying(128) DEFAULT ''::character varying NOT NULL,
    "timestamp" integer DEFAULT 0 NOT NULL,
    CONSTRAINT watchdog_severity_check CHECK ((severity >= 0))
);


ALTER TABLE public.watchdog OWNER TO drupal;

--
-- Name: TABLE watchdog; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON TABLE watchdog IS 'Table that contains logs of all system events.';


--
-- Name: COLUMN watchdog.wid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN watchdog.wid IS 'Primary Key: Unique watchdog event ID.';


--
-- Name: COLUMN watchdog.uid; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN watchdog.uid IS 'The users.uid of the user who triggered the event.';


--
-- Name: COLUMN watchdog.type; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN watchdog.type IS 'Type of log message, for example "user" or "page not found."';


--
-- Name: COLUMN watchdog.message; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN watchdog.message IS 'Text of log message to be passed into the t() function.';


--
-- Name: COLUMN watchdog.variables; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN watchdog.variables IS 'Serialized array of variables that match the message string and that is passed into the t() function.';


--
-- Name: COLUMN watchdog.severity; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN watchdog.severity IS 'The severity level of the event; ranges from 0 (Emergency) to 7 (Debug)';


--
-- Name: COLUMN watchdog.link; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN watchdog.link IS 'Link to view the result of the event.';


--
-- Name: COLUMN watchdog.location; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN watchdog.location IS 'URL of the origin of the event.';


--
-- Name: COLUMN watchdog.referer; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN watchdog.referer IS 'URL of referring page.';


--
-- Name: COLUMN watchdog.hostname; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN watchdog.hostname IS 'Hostname of the user who triggered the event.';


--
-- Name: COLUMN watchdog."timestamp"; Type: COMMENT; Schema: public; Owner: drupal
--

COMMENT ON COLUMN watchdog."timestamp" IS 'Unix timestamp of when event occurred.';


--
-- Name: watchdog_wid_seq; Type: SEQUENCE; Schema: public; Owner: drupal
--

CREATE SEQUENCE watchdog_wid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.watchdog_wid_seq OWNER TO drupal;

--
-- Name: watchdog_wid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: drupal
--

ALTER SEQUENCE watchdog_wid_seq OWNED BY watchdog.wid;


--
-- Name: aid; Type: DEFAULT; Schema: public; Owner: drupal
--

ALTER TABLE ONLY authmap ALTER COLUMN aid SET DEFAULT nextval('authmap_aid_seq'::regclass);


--
-- Name: bid; Type: DEFAULT; Schema: public; Owner: drupal
--

ALTER TABLE ONLY block ALTER COLUMN bid SET DEFAULT nextval('block_bid_seq'::regclass);


--
-- Name: bid; Type: DEFAULT; Schema: public; Owner: drupal
--

ALTER TABLE ONLY block_custom ALTER COLUMN bid SET DEFAULT nextval('block_custom_bid_seq'::regclass);


--
-- Name: iid; Type: DEFAULT; Schema: public; Owner: drupal
--

ALTER TABLE ONLY blocked_ips ALTER COLUMN iid SET DEFAULT nextval('blocked_ips_iid_seq'::regclass);


--
-- Name: dfid; Type: DEFAULT; Schema: public; Owner: drupal
--

ALTER TABLE ONLY date_formats ALTER COLUMN dfid SET DEFAULT nextval('date_formats_dfid_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: drupal
--

ALTER TABLE ONLY field_config ALTER COLUMN id SET DEFAULT nextval('field_config_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: drupal
--

ALTER TABLE ONLY field_config_instance ALTER COLUMN id SET DEFAULT nextval('field_config_instance_id_seq'::regclass);


--
-- Name: fid; Type: DEFAULT; Schema: public; Owner: drupal
--

ALTER TABLE ONLY file_managed ALTER COLUMN fid SET DEFAULT nextval('file_managed_fid_seq'::regclass);


--
-- Name: fid; Type: DEFAULT; Schema: public; Owner: drupal
--

ALTER TABLE ONLY flood ALTER COLUMN fid SET DEFAULT nextval('flood_fid_seq'::regclass);


--
-- Name: lid; Type: DEFAULT; Schema: public; Owner: drupal
--

ALTER TABLE ONLY locales_source ALTER COLUMN lid SET DEFAULT nextval('locales_source_lid_seq'::regclass);


--
-- Name: mlid; Type: DEFAULT; Schema: public; Owner: drupal
--

ALTER TABLE ONLY menu_links ALTER COLUMN mlid SET DEFAULT nextval('menu_links_mlid_seq'::regclass);


--
-- Name: nid; Type: DEFAULT; Schema: public; Owner: drupal
--

ALTER TABLE ONLY node ALTER COLUMN nid SET DEFAULT nextval('node_nid_seq'::regclass);


--
-- Name: vid; Type: DEFAULT; Schema: public; Owner: drupal
--

ALTER TABLE ONLY node_revision ALTER COLUMN vid SET DEFAULT nextval('node_revision_vid_seq'::regclass);


--
-- Name: item_id; Type: DEFAULT; Schema: public; Owner: drupal
--

ALTER TABLE ONLY queue ALTER COLUMN item_id SET DEFAULT nextval('queue_item_id_seq'::regclass);


--
-- Name: rid; Type: DEFAULT; Schema: public; Owner: drupal
--

ALTER TABLE ONLY role ALTER COLUMN rid SET DEFAULT nextval('role_rid_seq'::regclass);


--
-- Name: value; Type: DEFAULT; Schema: public; Owner: drupal
--

ALTER TABLE ONLY sequences ALTER COLUMN value SET DEFAULT nextval('sequences_value_seq'::regclass);


--
-- Name: pid; Type: DEFAULT; Schema: public; Owner: drupal
--

ALTER TABLE ONLY url_alias ALTER COLUMN pid SET DEFAULT nextval('url_alias_pid_seq'::regclass);


--
-- Name: wid; Type: DEFAULT; Schema: public; Owner: drupal
--

ALTER TABLE ONLY watchdog ALTER COLUMN wid SET DEFAULT nextval('watchdog_wid_seq'::regclass);


--
-- Data for Name: actions; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY actions (aid, type, callback, parameters, label) FROM stdin;
node_publish_action	node	node_publish_action		Publish content
node_unpublish_action	node	node_unpublish_action		Unpublish content
node_make_sticky_action	node	node_make_sticky_action		Make content sticky
node_make_unsticky_action	node	node_make_unsticky_action		Make content unsticky
node_promote_action	node	node_promote_action		Promote content to front page
node_unpromote_action	node	node_unpromote_action		Remove content from front page
node_save_action	node	node_save_action		Save content
system_block_ip_action	user	system_block_ip_action		Ban IP address of current user
user_block_user_action	user	user_block_user_action		Block current user
\.


--
-- Data for Name: authmap; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY authmap (aid, uid, authname, module) FROM stdin;
\.


--
-- Name: authmap_aid_seq; Type: SEQUENCE SET; Schema: public; Owner: drupal
--

SELECT pg_catalog.setval('authmap_aid_seq', 1, false);


--
-- Data for Name: batch; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY batch (bid, token, "timestamp", batch) FROM stdin;
\.


--
-- Data for Name: block; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY block (bid, module, delta, theme, status, weight, region, custom, visibility, pages, title, cache) FROM stdin;
1	system	main	bartik	1	0	content	0	0			-1
2	user	login	bartik	1	0	sidebar_first	0	0			-1
5	system	help	bartik	1	0	help	0	0			-1
6	node	syndicate	bartik	0	0	-1	0	0			-1
7	node	recent	bartik	0	0	-1	0	0			1
8	system	powered-by	bartik	0	10	-1	0	0			-1
9	system	user-menu	bartik	0	0	-1	0	0			-1
10	system	main-menu	bartik	0	0	-1	0	0			-1
11	user	new	bartik	0	0	-1	0	0			1
12	user	online	bartik	0	0	-1	0	0			-1
13	locale	language	bartik	0	0	-1	0	0			-1
14	devel	execute_php	bartik	0	0	-1	0	0			-1
15	devel	switch_user	bartik	0	0	-1	0	0			-1
4	system	management	bartik	0	1		0	0			-1
3	system	navigation	bartik	0	0		0	0			-1
\.


--
-- Name: block_bid_seq; Type: SEQUENCE SET; Schema: public; Owner: drupal
--

SELECT pg_catalog.setval('block_bid_seq', 15, true);


--
-- Data for Name: block_custom; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY block_custom (bid, body, info, format) FROM stdin;
\.


--
-- Name: block_custom_bid_seq; Type: SEQUENCE SET; Schema: public; Owner: drupal
--

SELECT pg_catalog.setval('block_custom_bid_seq', 1, false);


--
-- Data for Name: block_node_type; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY block_node_type (module, delta, type) FROM stdin;
\.


--
-- Data for Name: block_role; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY block_role (module, delta, rid) FROM stdin;
\.


--
-- Data for Name: blocked_ips; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY blocked_ips (iid, ip) FROM stdin;
\.


--
-- Name: blocked_ips_iid_seq; Type: SEQUENCE SET; Schema: public; Owner: drupal
--

SELECT pg_catalog.setval('blocked_ips_iid_seq', 1, false);


--
-- Data for Name: cache; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY cache (cid, data, expire, created, serialized) FROM stdin;
node_types:en	O:8:"stdClass":2:{s:5:"types";a:0:{}s:5:"names";a:0:{}}	0	1418195166	1
filter_formats:en	a:1:{s:10:"plain_text";O:8:"stdClass":5:{s:6:"format";s:10:"plain_text";s:4:"name";s:10:"Plain text";s:5:"cache";s:1:"1";s:6:"status";s:1:"1";s:6:"weight";s:2:"10";}}	0	1418195166	1
schema	a:55:{s:5:"block";a:6:{s:6:"fields";a:12:{s:3:"bid";a:2:{s:4:"type";s:6:"serial";s:8:"not null";b:1;}s:6:"module";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:64;s:8:"not null";b:1;s:7:"default";s:0:"";}s:5:"delta";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:32;s:8:"not null";b:1;s:7:"default";s:1:"0";}s:5:"theme";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:64;s:8:"not null";b:1;s:7:"default";s:0:"";}s:6:"status";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:4:"tiny";}s:6:"weight";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:6:"region";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:64;s:8:"not null";b:1;s:7:"default";s:0:"";}s:6:"custom";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:4:"tiny";}s:10:"visibility";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:4:"tiny";}s:5:"pages";a:2:{s:4:"type";s:4:"text";s:8:"not null";b:1;}s:5:"title";a:5:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";s:12:"translatable";b:1;}s:5:"cache";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:1;s:4:"size";s:4:"tiny";}}s:11:"primary key";a:1:{i:0;s:3:"bid";}s:11:"unique keys";a:1:{s:3:"tmd";a:3:{i:0;s:5:"theme";i:1;s:6:"module";i:2;s:5:"delta";}}s:7:"indexes";a:1:{s:4:"list";a:5:{i:0;s:5:"theme";i:1;s:6:"status";i:2;s:6:"region";i:3;s:6:"weight";i:4;s:6:"module";}}s:6:"module";s:5:"block";s:4:"name";s:5:"block";}s:10:"block_role";a:5:{s:6:"fields";a:3:{s:6:"module";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:64;s:8:"not null";b:1;}s:5:"delta";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:32;s:8:"not null";b:1;}s:3:"rid";a:3:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;}}s:11:"primary key";a:3:{i:0;s:6:"module";i:1;s:5:"delta";i:2;s:3:"rid";}s:7:"indexes";a:1:{s:3:"rid";a:1:{i:0;s:3:"rid";}}s:6:"module";s:5:"block";s:4:"name";s:10:"block_role";}s:12:"block_custom";a:5:{s:6:"fields";a:4:{s:3:"bid";a:3:{s:4:"type";s:6:"serial";s:8:"unsigned";b:1;s:8:"not null";b:1;}s:4:"body";a:4:{s:4:"type";s:4:"text";s:8:"not null";b:0;s:4:"size";s:3:"big";s:12:"translatable";b:1;}s:4:"info";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:128;s:8:"not null";b:1;s:7:"default";s:0:"";}s:6:"format";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:0;}}s:11:"unique keys";a:1:{s:4:"info";a:1:{i:0;s:4:"info";}}s:11:"primary key";a:1:{i:0;s:3:"bid";}s:6:"module";s:5:"block";s:4:"name";s:12:"block_custom";}s:11:"cache_block";a:5:{s:6:"fields";a:5:{s:3:"cid";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"data";a:3:{s:4:"type";s:4:"blob";s:8:"not null";b:0;s:4:"size";s:3:"big";}s:6:"expire";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"created";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:10:"serialized";a:4:{s:4:"type";s:3:"int";s:4:"size";s:5:"small";s:8:"not null";b:1;s:7:"default";i:0;}}s:7:"indexes";a:1:{s:6:"expire";a:1:{i:0;s:6:"expire";}}s:11:"primary key";a:1:{i:0;s:3:"cid";}s:6:"module";s:5:"block";s:4:"name";s:11:"cache_block";}s:8:"watchdog";a:5:{s:6:"fields";a:11:{s:3:"wid";a:2:{s:4:"type";s:6:"serial";s:8:"not null";b:1;}s:3:"uid";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:4:"type";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:64;s:8:"not null";b:1;s:7:"default";s:0:"";}s:7:"message";a:3:{s:4:"type";s:4:"text";s:8:"not null";b:1;s:4:"size";s:3:"big";}s:9:"variables";a:3:{s:4:"type";s:4:"blob";s:8:"not null";b:1;s:4:"size";s:3:"big";}s:8:"severity";a:5:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:4:"tiny";}s:4:"link";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:0;s:7:"default";s:0:"";}s:8:"location";a:2:{s:4:"type";s:4:"text";s:8:"not null";b:1;}s:7:"referer";a:2:{s:4:"type";s:4:"text";s:8:"not null";b:0;}s:8:"hostname";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:128;s:8:"not null";b:1;s:7:"default";s:0:"";}s:9:"timestamp";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}}s:11:"primary key";a:1:{i:0;s:3:"wid";}s:7:"indexes";a:3:{s:4:"type";a:1:{i:0;s:4:"type";}s:3:"uid";a:1:{i:0;s:3:"uid";}s:8:"severity";a:1:{i:0;s:8:"severity";}}s:6:"module";s:5:"dblog";s:4:"name";s:8:"watchdog";}s:12:"field_config";a:5:{s:6:"fields";a:13:{s:2:"id";a:2:{s:4:"type";s:6:"serial";s:8:"not null";b:1;}s:10:"field_name";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:32;s:8:"not null";b:1;}s:4:"type";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:128;s:8:"not null";b:1;}s:6:"module";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:128;s:8:"not null";b:1;s:7:"default";s:0:"";}s:6:"active";a:4:{s:4:"type";s:3:"int";s:4:"size";s:4:"tiny";s:8:"not null";b:1;s:7:"default";i:0;}s:12:"storage_type";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:128;s:8:"not null";b:1;}s:14:"storage_module";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:128;s:8:"not null";b:1;s:7:"default";s:0:"";}s:14:"storage_active";a:4:{s:4:"type";s:3:"int";s:4:"size";s:4:"tiny";s:8:"not null";b:1;s:7:"default";i:0;}s:6:"locked";a:4:{s:4:"type";s:3:"int";s:4:"size";s:4:"tiny";s:8:"not null";b:1;s:7:"default";i:0;}s:4:"data";a:4:{s:4:"type";s:4:"blob";s:4:"size";s:3:"big";s:8:"not null";b:1;s:9:"serialize";b:1;}s:11:"cardinality";a:4:{s:4:"type";s:3:"int";s:4:"size";s:4:"tiny";s:8:"not null";b:1;s:7:"default";i:0;}s:12:"translatable";a:4:{s:4:"type";s:3:"int";s:4:"size";s:4:"tiny";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"deleted";a:4:{s:4:"type";s:3:"int";s:4:"size";s:4:"tiny";s:8:"not null";b:1;s:7:"default";i:0;}}s:11:"primary key";a:1:{i:0;s:2:"id";}s:7:"indexes";a:8:{s:10:"field_name";a:1:{i:0;s:10:"field_name";}s:6:"active";a:1:{i:0;s:6:"active";}s:14:"storage_active";a:1:{i:0;s:14:"storage_active";}s:7:"deleted";a:1:{i:0;s:7:"deleted";}s:6:"module";a:1:{i:0;s:6:"module";}s:14:"storage_module";a:1:{i:0;s:14:"storage_module";}s:4:"type";a:1:{i:0;s:4:"type";}s:12:"storage_type";a:1:{i:0;s:12:"storage_type";}}s:6:"module";s:5:"field";s:4:"name";s:12:"field_config";}s:21:"field_config_instance";a:5:{s:6:"fields";a:7:{s:2:"id";a:2:{s:4:"type";s:6:"serial";s:8:"not null";b:1;}s:8:"field_id";a:2:{s:4:"type";s:3:"int";s:8:"not null";b:1;}s:10:"field_name";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:32;s:8:"not null";b:1;s:7:"default";s:0:"";}s:11:"entity_type";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:32;s:8:"not null";b:1;s:7:"default";s:0:"";}s:6:"bundle";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:128;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"data";a:4:{s:4:"type";s:4:"blob";s:4:"size";s:3:"big";s:8:"not null";b:1;s:9:"serialize";b:1;}s:7:"deleted";a:4:{s:4:"type";s:3:"int";s:4:"size";s:4:"tiny";s:8:"not null";b:1;s:7:"default";i:0;}}s:11:"primary key";a:1:{i:0;s:2:"id";}s:7:"indexes";a:2:{s:17:"field_name_bundle";a:3:{i:0;s:10:"field_name";i:1;s:11:"entity_type";i:2;s:6:"bundle";}s:7:"deleted";a:1:{i:0;s:7:"deleted";}}s:6:"module";s:5:"field";s:4:"name";s:21:"field_config_instance";}s:11:"cache_field";a:5:{s:6:"fields";a:5:{s:3:"cid";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"data";a:3:{s:4:"type";s:4:"blob";s:8:"not null";b:0;s:4:"size";s:3:"big";}s:6:"expire";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"created";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:10:"serialized";a:4:{s:4:"type";s:3:"int";s:4:"size";s:5:"small";s:8:"not null";b:1;s:7:"default";i:0;}}s:7:"indexes";a:1:{s:6:"expire";a:1:{i:0;s:6:"expire";}}s:11:"primary key";a:1:{i:0;s:3:"cid";}s:6:"module";s:5:"field";s:4:"name";s:11:"cache_field";}s:6:"filter";a:5:{s:6:"fields";a:6:{s:6:"format";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;}s:6:"module";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:64;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"name";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:32;s:8:"not null";b:1;s:7:"default";s:0:"";}s:6:"weight";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:6:"status";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:8:"settings";a:4:{s:4:"type";s:4:"blob";s:8:"not null";b:0;s:4:"size";s:3:"big";s:9:"serialize";b:1;}}s:11:"primary key";a:2:{i:0;s:6:"format";i:1;s:4:"name";}s:7:"indexes";a:1:{s:4:"list";a:3:{i:0;s:6:"weight";i:1;s:6:"module";i:2;s:4:"name";}}s:6:"module";s:6:"filter";s:4:"name";s:6:"filter";}s:13:"filter_format";a:6:{s:6:"fields";a:5:{s:6:"format";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;}s:4:"name";a:5:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";s:12:"translatable";b:1;}s:5:"cache";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:4:"tiny";}s:6:"status";a:5:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:1;s:4:"size";s:4:"tiny";}s:6:"weight";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}}s:11:"primary key";a:1:{i:0;s:6:"format";}s:11:"unique keys";a:1:{s:4:"name";a:1:{i:0;s:4:"name";}}s:7:"indexes";a:1:{s:13:"status_weight";a:2:{i:0;s:6:"status";i:1;s:6:"weight";}}s:6:"module";s:6:"filter";s:4:"name";s:13:"filter_format";}s:12:"cache_filter";a:5:{s:6:"fields";a:5:{s:3:"cid";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"data";a:3:{s:4:"type";s:4:"blob";s:8:"not null";b:0;s:4:"size";s:3:"big";}s:6:"expire";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"created";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:10:"serialized";a:4:{s:4:"type";s:3:"int";s:4:"size";s:5:"small";s:8:"not null";b:1;s:7:"default";i:0;}}s:7:"indexes";a:1:{s:6:"expire";a:1:{i:0;s:6:"expire";}}s:11:"primary key";a:1:{i:0;s:3:"cid";}s:6:"module";s:6:"filter";s:4:"name";s:12:"cache_filter";}s:19:"l10n_update_project";a:4:{s:6:"fields";a:7:{s:4:"name";a:3:{s:4:"type";s:7:"varchar";s:6:"length";s:2:"50";s:8:"not null";b:1;}s:12:"project_type";a:3:{s:4:"type";s:7:"varchar";s:6:"length";s:2:"50";s:8:"not null";b:1;}s:4:"core";a:4:{s:4:"type";s:7:"varchar";s:6:"length";s:3:"128";s:8:"not null";b:1;s:7:"default";s:0:"";}s:7:"version";a:4:{s:4:"type";s:7:"varchar";s:6:"length";s:3:"128";s:8:"not null";b:1;s:7:"default";s:0:"";}s:11:"l10n_server";a:4:{s:4:"type";s:7:"varchar";s:6:"length";s:3:"255";s:8:"not null";b:1;s:7:"default";s:0:"";}s:9:"l10n_path";a:4:{s:4:"type";s:7:"varchar";s:6:"length";s:3:"255";s:8:"not null";b:1;s:7:"default";s:0:"";}s:6:"status";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:1;}}s:11:"primary key";a:1:{i:0;s:4:"name";}s:6:"module";s:11:"l10n_update";s:4:"name";s:19:"l10n_update_project";}s:16:"l10n_update_file";a:4:{s:6:"fields";a:10:{s:7:"project";a:3:{s:4:"type";s:7:"varchar";s:6:"length";s:2:"50";s:8:"not null";b:1;}s:8:"language";a:3:{s:4:"type";s:7:"varchar";s:6:"length";s:2:"12";s:8:"not null";b:1;}s:4:"type";a:4:{s:4:"type";s:7:"varchar";s:6:"length";s:2:"50";s:8:"not null";b:1;s:7:"default";s:0:"";}s:8:"filename";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:7:"fileurl";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:3:"uri";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:9:"timestamp";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:0;s:10:"disp-width";s:2:"11";s:7:"default";i:0;}s:7:"version";a:4:{s:4:"type";s:7:"varchar";s:6:"length";s:3:"128";s:8:"not null";b:1;s:7:"default";s:0:"";}s:6:"status";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:1;}s:12:"last_checked";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:0;s:10:"disp-width";s:2:"11";s:7:"default";i:0;}}s:11:"primary key";a:2:{i:0;s:7:"project";i:1;s:8:"language";}s:6:"module";s:11:"l10n_update";s:4:"name";s:16:"l10n_update_file";}s:17:"cache_l10n_update";a:5:{s:6:"fields";a:5:{s:3:"cid";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"data";a:3:{s:4:"type";s:4:"blob";s:8:"not null";b:0;s:4:"size";s:3:"big";}s:6:"expire";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"created";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:10:"serialized";a:4:{s:4:"type";s:3:"int";s:4:"size";s:5:"small";s:8:"not null";b:1;s:7:"default";i:0;}}s:7:"indexes";a:1:{s:6:"expire";a:1:{i:0;s:6:"expire";}}s:11:"primary key";a:1:{i:0;s:3:"cid";}s:6:"module";s:11:"l10n_update";s:4:"name";s:17:"cache_l10n_update";}s:9:"languages";a:5:{s:6:"fields";a:11:{s:8:"language";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:12;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"name";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:64;s:8:"not null";b:1;s:7:"default";s:0:"";}s:6:"native";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:64;s:8:"not null";b:1;s:7:"default";s:0:"";}s:9:"direction";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"enabled";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"plurals";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"formula";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:6:"domain";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:128;s:8:"not null";b:1;s:7:"default";s:0:"";}s:6:"prefix";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:128;s:8:"not null";b:1;s:7:"default";s:0:"";}s:6:"weight";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:10:"javascript";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:64;s:8:"not null";b:1;s:7:"default";s:0:"";}}s:11:"primary key";a:1:{i:0;s:8:"language";}s:7:"indexes";a:1:{s:4:"list";a:2:{i:0;s:6:"weight";i:1;s:4:"name";}}s:6:"module";s:6:"locale";s:4:"name";s:9:"languages";}s:14:"locales_source";a:5:{s:6:"fields";a:6:{s:3:"lid";a:2:{s:4:"type";s:6:"serial";s:8:"not null";b:1;}s:8:"location";a:3:{s:4:"type";s:4:"text";s:8:"not null";b:0;s:4:"size";s:3:"big";}s:9:"textgroup";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:7:"default";}s:6:"source";a:3:{s:4:"type";s:4:"text";s:10:"mysql_type";s:4:"blob";s:8:"not null";b:1;}s:7:"context";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:7:"version";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:20;s:8:"not null";b:1;s:7:"default";s:4:"none";}}s:11:"primary key";a:1:{i:0;s:3:"lid";}s:7:"indexes";a:1:{s:14:"source_context";a:2:{i:0;a:2:{i:0;s:6:"source";i:1;i:30;}i:1;s:7:"context";}}s:6:"module";s:6:"locale";s:4:"name";s:14:"locales_source";}s:14:"locales_target";a:6:{s:6:"fields";a:6:{s:3:"lid";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:11:"translation";a:3:{s:4:"type";s:4:"text";s:10:"mysql_type";s:4:"blob";s:8:"not null";b:1;}s:8:"language";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:12;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"plid";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:6:"plural";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:11:"l10n_status";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}}s:11:"primary key";a:3:{i:0;s:8:"language";i:1;s:3:"lid";i:2;s:6:"plural";}s:12:"foreign keys";a:1:{s:14:"locales_source";a:2:{s:5:"table";s:14:"locales_source";s:7:"columns";a:1:{s:3:"lid";s:3:"lid";}}}s:7:"indexes";a:3:{s:3:"lid";a:1:{i:0;s:3:"lid";}s:4:"plid";a:1:{i:0;s:4:"plid";}s:6:"plural";a:1:{i:0;s:6:"plural";}}s:6:"module";s:6:"locale";s:4:"name";s:14:"locales_target";}s:4:"node";a:7:{s:6:"fields";a:14:{s:3:"nid";a:3:{s:4:"type";s:6:"serial";s:8:"unsigned";b:1;s:8:"not null";b:1;}s:3:"vid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:7:"default";N;}s:4:"type";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:32;s:8:"not null";b:1;s:7:"default";s:0:"";}s:8:"language";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:12;s:8:"not null";b:1;s:7:"default";s:0:"";}s:5:"title";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:3:"uid";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:6:"status";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:1;}s:7:"created";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"changed";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"comment";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"promote";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:6:"sticky";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:4:"tnid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:9:"translate";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}}s:7:"indexes";a:10:{s:12:"node_changed";a:1:{i:0;s:7:"changed";}s:12:"node_created";a:1:{i:0;s:7:"created";}s:14:"node_frontpage";a:4:{i:0;s:7:"promote";i:1;s:6:"status";i:2;s:6:"sticky";i:3;s:7:"created";}s:16:"node_status_type";a:3:{i:0;s:6:"status";i:1;s:4:"type";i:2;s:3:"nid";}s:15:"node_title_type";a:2:{i:0;s:5:"title";i:1;a:2:{i:0;s:4:"type";i:1;i:4;}}s:9:"node_type";a:1:{i:0;a:2:{i:0;s:4:"type";i:1;i:4;}}s:3:"uid";a:1:{i:0;s:3:"uid";}s:4:"tnid";a:1:{i:0;s:4:"tnid";}s:9:"translate";a:1:{i:0;s:9:"translate";}s:8:"language";a:1:{i:0;s:8:"language";}}s:11:"unique keys";a:1:{s:3:"vid";a:1:{i:0;s:3:"vid";}}s:12:"foreign keys";a:2:{s:13:"node_revision";a:2:{s:5:"table";s:13:"node_revision";s:7:"columns";a:1:{s:3:"vid";s:3:"vid";}}s:11:"node_author";a:2:{s:5:"table";s:5:"users";s:7:"columns";a:1:{s:3:"uid";s:3:"uid";}}}s:11:"primary key";a:1:{i:0;s:3:"nid";}s:6:"module";s:4:"node";s:4:"name";s:4:"node";}s:11:"node_access";a:5:{s:6:"fields";a:6:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:3:"gid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:5:"realm";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:10:"grant_view";a:5:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:4:"tiny";}s:12:"grant_update";a:5:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:4:"tiny";}s:12:"grant_delete";a:5:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:4:"tiny";}}s:11:"primary key";a:3:{i:0;s:3:"nid";i:1;s:3:"gid";i:2;s:5:"realm";}s:12:"foreign keys";a:1:{s:13:"affected_node";a:2:{s:5:"table";s:4:"node";s:7:"columns";a:1:{s:3:"nid";s:3:"nid";}}}s:6:"module";s:4:"node";s:4:"name";s:11:"node_access";}s:13:"node_revision";a:6:{s:6:"fields";a:10:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:3:"vid";a:3:{s:4:"type";s:6:"serial";s:8:"unsigned";b:1;s:8:"not null";b:1;}s:3:"uid";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:5:"title";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:3:"log";a:3:{s:4:"type";s:4:"text";s:8:"not null";b:1;s:4:"size";s:3:"big";}s:9:"timestamp";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:6:"status";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:1;}s:7:"comment";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"promote";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:6:"sticky";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}}s:7:"indexes";a:2:{s:3:"nid";a:1:{i:0;s:3:"nid";}s:3:"uid";a:1:{i:0;s:3:"uid";}}s:11:"primary key";a:1:{i:0;s:3:"vid";}s:12:"foreign keys";a:2:{s:14:"versioned_node";a:2:{s:5:"table";s:4:"node";s:7:"columns";a:1:{s:3:"nid";s:3:"nid";}}s:14:"version_author";a:2:{s:5:"table";s:5:"users";s:7:"columns";a:1:{s:3:"uid";s:3:"uid";}}}s:6:"module";s:4:"node";s:4:"name";s:13:"node_revision";}s:9:"node_type";a:4:{s:6:"fields";a:13:{s:4:"type";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:32;s:8:"not null";b:1;}s:4:"name";a:5:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";s:12:"translatable";b:1;}s:4:"base";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;}s:6:"module";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;}s:11:"description";a:4:{s:4:"type";s:4:"text";s:8:"not null";b:1;s:4:"size";s:6:"medium";s:12:"translatable";b:1;}s:4:"help";a:4:{s:4:"type";s:4:"text";s:8:"not null";b:1;s:4:"size";s:6:"medium";s:12:"translatable";b:1;}s:9:"has_title";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:4:"size";s:4:"tiny";}s:11:"title_label";a:5:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";s:12:"translatable";b:1;}s:6:"custom";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:4:"tiny";}s:8:"modified";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:4:"tiny";}s:6:"locked";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:4:"tiny";}s:8:"disabled";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:4:"tiny";}s:9:"orig_type";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}}s:11:"primary key";a:1:{i:0;s:4:"type";}s:6:"module";s:4:"node";s:4:"name";s:9:"node_type";}s:15:"block_node_type";a:5:{s:6:"fields";a:3:{s:6:"module";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:64;s:8:"not null";b:1;}s:5:"delta";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:32;s:8:"not null";b:1;}s:4:"type";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:32;s:8:"not null";b:1;}}s:11:"primary key";a:3:{i:0;s:6:"module";i:1;s:5:"delta";i:2;s:4:"type";}s:7:"indexes";a:1:{s:4:"type";a:1:{i:0;s:4:"type";}}s:6:"module";s:4:"node";s:4:"name";s:15:"block_node_type";}s:7:"history";a:5:{s:6:"fields";a:3:{s:3:"uid";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:3:"nid";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:9:"timestamp";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}}s:11:"primary key";a:2:{i:0;s:3:"uid";i:1;s:3:"nid";}s:7:"indexes";a:1:{s:3:"nid";a:1:{i:0;s:3:"nid";}}s:6:"module";s:4:"node";s:4:"name";s:7:"history";}s:8:"variable";a:4:{s:6:"fields";a:2:{s:4:"name";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:128;s:8:"not null";b:1;s:7:"default";s:0:"";}s:5:"value";a:4:{s:4:"type";s:4:"blob";s:8:"not null";b:1;s:4:"size";s:3:"big";s:12:"translatable";b:1;}}s:11:"primary key";a:1:{i:0;s:4:"name";}s:6:"module";s:6:"system";s:4:"name";s:8:"variable";}s:7:"actions";a:4:{s:6:"fields";a:5:{s:3:"aid";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:1:"0";}s:4:"type";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:32;s:8:"not null";b:1;s:7:"default";s:0:"";}s:8:"callback";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:10:"parameters";a:3:{s:4:"type";s:4:"blob";s:8:"not null";b:1;s:4:"size";s:3:"big";}s:5:"label";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:1:"0";}}s:11:"primary key";a:1:{i:0;s:3:"aid";}s:6:"module";s:6:"system";s:4:"name";s:7:"actions";}s:5:"batch";a:5:{s:6:"fields";a:4:{s:3:"bid";a:3:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;}s:5:"token";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:64;s:8:"not null";b:1;}s:9:"timestamp";a:2:{s:4:"type";s:3:"int";s:8:"not null";b:1;}s:5:"batch";a:3:{s:4:"type";s:4:"blob";s:8:"not null";b:0;s:4:"size";s:3:"big";}}s:11:"primary key";a:1:{i:0;s:3:"bid";}s:7:"indexes";a:1:{s:5:"token";a:1:{i:0;s:5:"token";}}s:6:"module";s:6:"system";s:4:"name";s:5:"batch";}s:11:"blocked_ips";a:5:{s:6:"fields";a:2:{s:3:"iid";a:3:{s:4:"type";s:6:"serial";s:8:"unsigned";b:1;s:8:"not null";b:1;}s:2:"ip";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:40;s:8:"not null";b:1;s:7:"default";s:0:"";}}s:7:"indexes";a:1:{s:10:"blocked_ip";a:1:{i:0;s:2:"ip";}}s:11:"primary key";a:1:{i:0;s:3:"iid";}s:6:"module";s:6:"system";s:4:"name";s:11:"blocked_ips";}s:5:"cache";a:5:{s:6:"fields";a:5:{s:3:"cid";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"data";a:3:{s:4:"type";s:4:"blob";s:8:"not null";b:0;s:4:"size";s:3:"big";}s:6:"expire";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"created";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:10:"serialized";a:4:{s:4:"type";s:3:"int";s:4:"size";s:5:"small";s:8:"not null";b:1;s:7:"default";i:0;}}s:7:"indexes";a:1:{s:6:"expire";a:1:{i:0;s:6:"expire";}}s:11:"primary key";a:1:{i:0;s:3:"cid";}s:6:"module";s:6:"system";s:4:"name";s:5:"cache";}s:15:"cache_bootstrap";a:5:{s:6:"fields";a:5:{s:3:"cid";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"data";a:3:{s:4:"type";s:4:"blob";s:8:"not null";b:0;s:4:"size";s:3:"big";}s:6:"expire";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"created";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:10:"serialized";a:4:{s:4:"type";s:3:"int";s:4:"size";s:5:"small";s:8:"not null";b:1;s:7:"default";i:0;}}s:7:"indexes";a:1:{s:6:"expire";a:1:{i:0;s:6:"expire";}}s:11:"primary key";a:1:{i:0;s:3:"cid";}s:6:"module";s:6:"system";s:4:"name";s:15:"cache_bootstrap";}s:10:"cache_form";a:5:{s:6:"fields";a:5:{s:3:"cid";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"data";a:3:{s:4:"type";s:4:"blob";s:8:"not null";b:0;s:4:"size";s:3:"big";}s:6:"expire";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"created";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:10:"serialized";a:4:{s:4:"type";s:3:"int";s:4:"size";s:5:"small";s:8:"not null";b:1;s:7:"default";i:0;}}s:7:"indexes";a:1:{s:6:"expire";a:1:{i:0;s:6:"expire";}}s:11:"primary key";a:1:{i:0;s:3:"cid";}s:6:"module";s:6:"system";s:4:"name";s:10:"cache_form";}s:10:"cache_page";a:5:{s:6:"fields";a:5:{s:3:"cid";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"data";a:3:{s:4:"type";s:4:"blob";s:8:"not null";b:0;s:4:"size";s:3:"big";}s:6:"expire";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"created";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:10:"serialized";a:4:{s:4:"type";s:3:"int";s:4:"size";s:5:"small";s:8:"not null";b:1;s:7:"default";i:0;}}s:7:"indexes";a:1:{s:6:"expire";a:1:{i:0;s:6:"expire";}}s:11:"primary key";a:1:{i:0;s:3:"cid";}s:6:"module";s:6:"system";s:4:"name";s:10:"cache_page";}s:10:"cache_menu";a:5:{s:6:"fields";a:5:{s:3:"cid";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"data";a:3:{s:4:"type";s:4:"blob";s:8:"not null";b:0;s:4:"size";s:3:"big";}s:6:"expire";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"created";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:10:"serialized";a:4:{s:4:"type";s:3:"int";s:4:"size";s:5:"small";s:8:"not null";b:1;s:7:"default";i:0;}}s:7:"indexes";a:1:{s:6:"expire";a:1:{i:0;s:6:"expire";}}s:11:"primary key";a:1:{i:0;s:3:"cid";}s:6:"module";s:6:"system";s:4:"name";s:10:"cache_menu";}s:10:"cache_path";a:5:{s:6:"fields";a:5:{s:3:"cid";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"data";a:3:{s:4:"type";s:4:"blob";s:8:"not null";b:0;s:4:"size";s:3:"big";}s:6:"expire";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"created";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:10:"serialized";a:4:{s:4:"type";s:3:"int";s:4:"size";s:5:"small";s:8:"not null";b:1;s:7:"default";i:0;}}s:7:"indexes";a:1:{s:6:"expire";a:1:{i:0;s:6:"expire";}}s:11:"primary key";a:1:{i:0;s:3:"cid";}s:6:"module";s:6:"system";s:4:"name";s:10:"cache_path";}s:16:"date_format_type";a:5:{s:6:"fields";a:3:{s:4:"type";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:64;s:8:"not null";b:1;}s:5:"title";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;}s:6:"locked";a:4:{s:4:"type";s:3:"int";s:4:"size";s:4:"tiny";s:7:"default";i:0;s:8:"not null";b:1;}}s:11:"primary key";a:1:{i:0;s:4:"type";}s:7:"indexes";a:1:{s:5:"title";a:1:{i:0;s:5:"title";}}s:6:"module";s:6:"system";s:4:"name";s:16:"date_format_type";}s:12:"date_formats";a:5:{s:6:"fields";a:4:{s:4:"dfid";a:3:{s:4:"type";s:6:"serial";s:8:"not null";b:1;s:8:"unsigned";b:1;}s:6:"format";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:100;s:8:"not null";b:1;s:6:"binary";b:1;}s:4:"type";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:64;s:8:"not null";b:1;}s:6:"locked";a:4:{s:4:"type";s:3:"int";s:4:"size";s:4:"tiny";s:7:"default";i:0;s:8:"not null";b:1;}}s:11:"primary key";a:1:{i:0;s:4:"dfid";}s:11:"unique keys";a:1:{s:7:"formats";a:2:{i:0;s:6:"format";i:1;s:4:"type";}}s:6:"module";s:6:"system";s:4:"name";s:12:"date_formats";}s:18:"date_format_locale";a:4:{s:6:"fields";a:3:{s:6:"format";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:100;s:8:"not null";b:1;}s:4:"type";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:64;s:8:"not null";b:1;}s:8:"language";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:12;s:8:"not null";b:1;}}s:11:"primary key";a:2:{i:0;s:4:"type";i:1;s:8:"language";}s:6:"module";s:6:"system";s:4:"name";s:18:"date_format_locale";}s:12:"file_managed";a:7:{s:6:"fields";a:8:{s:3:"fid";a:3:{s:4:"type";s:6:"serial";s:8:"unsigned";b:1;s:8:"not null";b:1;}s:3:"uid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:8:"filename";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:3:"uri";a:5:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";s:6:"binary";b:1;}s:8:"filemime";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:8:"filesize";a:5:{s:4:"type";s:3:"int";s:4:"size";s:3:"big";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:6:"status";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:4:"tiny";}s:9:"timestamp";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}}s:7:"indexes";a:3:{s:3:"uid";a:1:{i:0;s:3:"uid";}s:6:"status";a:1:{i:0;s:6:"status";}s:9:"timestamp";a:1:{i:0;s:9:"timestamp";}}s:11:"unique keys";a:1:{s:3:"uri";a:1:{i:0;s:3:"uri";}}s:11:"primary key";a:1:{i:0;s:3:"fid";}s:12:"foreign keys";a:1:{s:10:"file_owner";a:2:{s:5:"table";s:5:"users";s:7:"columns";a:1:{s:3:"uid";s:3:"uid";}}}s:6:"module";s:6:"system";s:4:"name";s:12:"file_managed";}s:10:"file_usage";a:5:{s:6:"fields";a:5:{s:3:"fid";a:3:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;}s:6:"module";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"type";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:64;s:8:"not null";b:1;s:7:"default";s:0:"";}s:2:"id";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:5:"count";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}}s:11:"primary key";a:4:{i:0;s:3:"fid";i:1;s:4:"type";i:2;s:2:"id";i:3;s:6:"module";}s:7:"indexes";a:3:{s:7:"type_id";a:2:{i:0;s:4:"type";i:1;s:2:"id";}s:9:"fid_count";a:2:{i:0;s:3:"fid";i:1;s:5:"count";}s:10:"fid_module";a:2:{i:0;s:3:"fid";i:1;s:6:"module";}}s:6:"module";s:6:"system";s:4:"name";s:10:"file_usage";}s:5:"flood";a:5:{s:6:"fields";a:5:{s:3:"fid";a:2:{s:4:"type";s:6:"serial";s:8:"not null";b:1;}s:5:"event";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:64;s:8:"not null";b:1;s:7:"default";s:0:"";}s:10:"identifier";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:128;s:8:"not null";b:1;s:7:"default";s:0:"";}s:9:"timestamp";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:10:"expiration";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}}s:11:"primary key";a:1:{i:0;s:3:"fid";}s:7:"indexes";a:2:{s:5:"allow";a:3:{i:0;s:5:"event";i:1;s:10:"identifier";i:2;s:9:"timestamp";}s:5:"purge";a:1:{i:0;s:10:"expiration";}}s:6:"module";s:6:"system";s:4:"name";s:5:"flood";}s:11:"menu_router";a:5:{s:6:"fields";a:23:{s:4:"path";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:14:"load_functions";a:2:{s:4:"type";s:4:"blob";s:8:"not null";b:1;}s:16:"to_arg_functions";a:2:{s:4:"type";s:4:"blob";s:8:"not null";b:1;}s:15:"access_callback";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:16:"access_arguments";a:2:{s:4:"type";s:4:"blob";s:8:"not null";b:0;}s:13:"page_callback";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:14:"page_arguments";a:2:{s:4:"type";s:4:"blob";s:8:"not null";b:0;}s:17:"delivery_callback";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:3:"fit";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:12:"number_parts";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:5:"small";}s:7:"context";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:10:"tab_parent";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:8:"tab_root";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:5:"title";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:14:"title_callback";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:15:"title_arguments";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:14:"theme_callback";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:15:"theme_arguments";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"type";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:11:"description";a:2:{s:4:"type";s:4:"text";s:8:"not null";b:1;}s:8:"position";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:6:"weight";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:12:"include_file";a:2:{s:4:"type";s:4:"text";s:4:"size";s:6:"medium";}}s:7:"indexes";a:3:{s:3:"fit";a:1:{i:0;s:3:"fit";}s:10:"tab_parent";a:3:{i:0;a:2:{i:0;s:10:"tab_parent";i:1;i:64;}i:1;s:6:"weight";i:2;s:5:"title";}s:21:"tab_root_weight_title";a:3:{i:0;a:2:{i:0;s:8:"tab_root";i:1;i:64;}i:1;s:6:"weight";i:2;s:5:"title";}}s:11:"primary key";a:1:{i:0;s:4:"path";}s:6:"module";s:6:"system";s:4:"name";s:11:"menu_router";}s:10:"menu_links";a:5:{s:6:"fields";a:25:{s:9:"menu_name";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:32;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"mlid";a:3:{s:4:"type";s:6:"serial";s:8:"unsigned";b:1;s:8:"not null";b:1;}s:4:"plid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:9:"link_path";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:11:"router_path";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:10:"link_title";a:5:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";s:12:"translatable";b:1;}s:7:"options";a:3:{s:4:"type";s:4:"blob";s:8:"not null";b:0;s:12:"translatable";b:1;}s:6:"module";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:6:"system";}s:6:"hidden";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:5:"small";}s:8:"external";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:5:"small";}s:12:"has_children";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:5:"small";}s:8:"expanded";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:5:"small";}s:6:"weight";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:5:"depth";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:5:"small";}s:10:"customized";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:5:"small";}s:2:"p1";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:2:"p2";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:2:"p3";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:2:"p4";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:2:"p5";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:2:"p6";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:2:"p7";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:2:"p8";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:2:"p9";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:7:"updated";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:5:"small";}}s:7:"indexes";a:4:{s:9:"path_menu";a:2:{i:0;a:2:{i:0;s:9:"link_path";i:1;i:128;}i:1;s:9:"menu_name";}s:22:"menu_plid_expand_child";a:4:{i:0;s:9:"menu_name";i:1;s:4:"plid";i:2;s:8:"expanded";i:3;s:12:"has_children";}s:12:"menu_parents";a:10:{i:0;s:9:"menu_name";i:1;s:2:"p1";i:2;s:2:"p2";i:3;s:2:"p3";i:4;s:2:"p4";i:5;s:2:"p5";i:6;s:2:"p6";i:7;s:2:"p7";i:8;s:2:"p8";i:9;s:2:"p9";}s:11:"router_path";a:1:{i:0;a:2:{i:0;s:11:"router_path";i:1;i:128;}}}s:11:"primary key";a:1:{i:0;s:4:"mlid";}s:6:"module";s:6:"system";s:4:"name";s:10:"menu_links";}s:5:"queue";a:5:{s:6:"fields";a:5:{s:7:"item_id";a:3:{s:4:"type";s:6:"serial";s:8:"unsigned";b:1;s:8:"not null";b:1;}s:4:"name";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"data";a:4:{s:4:"type";s:4:"blob";s:8:"not null";b:0;s:4:"size";s:3:"big";s:9:"serialize";b:1;}s:6:"expire";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"created";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}}s:11:"primary key";a:1:{i:0;s:7:"item_id";}s:7:"indexes";a:2:{s:12:"name_created";a:2:{i:0;s:4:"name";i:1;s:7:"created";}s:6:"expire";a:1:{i:0;s:6:"expire";}}s:6:"module";s:6:"system";s:4:"name";s:5:"queue";}s:8:"registry";a:5:{s:6:"fields";a:5:{s:4:"name";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"type";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:9;s:8:"not null";b:1;s:7:"default";s:0:"";}s:8:"filename";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;}s:6:"module";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:6:"weight";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}}s:11:"primary key";a:2:{i:0;s:4:"name";i:1;s:4:"type";}s:7:"indexes";a:1:{s:4:"hook";a:3:{i:0;s:4:"type";i:1;s:6:"weight";i:2;s:6:"module";}}s:6:"module";s:6:"system";s:4:"name";s:8:"registry";}s:13:"registry_file";a:4:{s:6:"fields";a:2:{s:8:"filename";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;}s:4:"hash";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:64;s:8:"not null";b:1;}}s:11:"primary key";a:1:{i:0;s:8:"filename";}s:6:"module";s:6:"system";s:4:"name";s:13:"registry_file";}s:9:"semaphore";a:5:{s:6:"fields";a:3:{s:4:"name";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:5:"value";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:6:"expire";a:3:{s:4:"type";s:5:"float";s:4:"size";s:3:"big";s:8:"not null";b:1;}}s:7:"indexes";a:2:{s:5:"value";a:1:{i:0;s:5:"value";}s:6:"expire";a:1:{i:0;s:6:"expire";}}s:11:"primary key";a:1:{i:0;s:4:"name";}s:6:"module";s:6:"system";s:4:"name";s:9:"semaphore";}s:9:"sequences";a:4:{s:6:"fields";a:1:{s:5:"value";a:3:{s:4:"type";s:6:"serial";s:8:"unsigned";b:1;s:8:"not null";b:1;}}s:11:"primary key";a:1:{i:0;s:5:"value";}s:6:"module";s:6:"system";s:4:"name";s:9:"sequences";}s:8:"sessions";a:6:{s:6:"fields";a:7:{s:3:"uid";a:3:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;}s:3:"sid";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:128;s:8:"not null";b:1;}s:4:"ssid";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:128;s:8:"not null";b:1;s:7:"default";s:0:"";}s:8:"hostname";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:128;s:8:"not null";b:1;s:7:"default";s:0:"";}s:9:"timestamp";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:5:"cache";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"session";a:3:{s:4:"type";s:4:"blob";s:8:"not null";b:0;s:4:"size";s:3:"big";}}s:11:"primary key";a:2:{i:0;s:3:"sid";i:1;s:4:"ssid";}s:7:"indexes";a:3:{s:9:"timestamp";a:1:{i:0;s:9:"timestamp";}s:3:"uid";a:1:{i:0;s:3:"uid";}s:4:"ssid";a:1:{i:0;s:4:"ssid";}}s:12:"foreign keys";a:1:{s:12:"session_user";a:2:{s:5:"table";s:5:"users";s:7:"columns";a:1:{s:3:"uid";s:3:"uid";}}}s:6:"module";s:6:"system";s:4:"name";s:8:"sessions";}s:6:"system";a:5:{s:6:"fields";a:9:{s:8:"filename";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"name";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"type";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:12;s:8:"not null";b:1;s:7:"default";s:0:"";}s:5:"owner";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:6:"status";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:9:"bootstrap";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:14:"schema_version";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:-1;s:4:"size";s:5:"small";}s:6:"weight";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:4:"info";a:2:{s:4:"type";s:4:"blob";s:8:"not null";b:0;}}s:11:"primary key";a:1:{i:0;s:8:"filename";}s:7:"indexes";a:2:{s:11:"system_list";a:5:{i:0;s:6:"status";i:1;s:9:"bootstrap";i:2;s:4:"type";i:3;s:6:"weight";i:4;s:4:"name";}s:9:"type_name";a:2:{i:0;s:4:"type";i:1;s:4:"name";}}s:6:"module";s:6:"system";s:4:"name";s:6:"system";}s:9:"url_alias";a:5:{s:6:"fields";a:4:{s:3:"pid";a:3:{s:4:"type";s:6:"serial";s:8:"unsigned";b:1;s:8:"not null";b:1;}s:6:"source";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:5:"alias";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:8:"language";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:12;s:8:"not null";b:1;s:7:"default";s:0:"";}}s:11:"primary key";a:1:{i:0;s:3:"pid";}s:7:"indexes";a:2:{s:18:"alias_language_pid";a:3:{i:0;s:5:"alias";i:1;s:8:"language";i:2;s:3:"pid";}s:19:"source_language_pid";a:3:{i:0;s:6:"source";i:1;s:8:"language";i:2;s:3:"pid";}}s:6:"module";s:6:"system";s:4:"name";s:9:"url_alias";}s:7:"authmap";a:6:{s:6:"fields";a:4:{s:3:"aid";a:3:{s:4:"type";s:6:"serial";s:8:"unsigned";b:1;s:8:"not null";b:1;}s:3:"uid";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:8:"authname";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:128;s:8:"not null";b:1;s:7:"default";s:0:"";}s:6:"module";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:128;s:8:"not null";b:1;s:7:"default";s:0:"";}}s:11:"unique keys";a:1:{s:8:"authname";a:1:{i:0;s:8:"authname";}}s:11:"primary key";a:1:{i:0;s:3:"aid";}s:12:"foreign keys";a:1:{s:4:"user";a:2:{s:5:"table";s:5:"users";s:7:"columns";a:1:{s:3:"uid";s:3:"uid";}}}s:6:"module";s:4:"user";s:4:"name";s:7:"authmap";}s:15:"role_permission";a:6:{s:6:"fields";a:3:{s:3:"rid";a:3:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;}s:10:"permission";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:128;s:8:"not null";b:1;s:7:"default";s:0:"";}s:6:"module";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}}s:11:"primary key";a:2:{i:0;s:3:"rid";i:1;s:10:"permission";}s:7:"indexes";a:1:{s:10:"permission";a:1:{i:0;s:10:"permission";}}s:12:"foreign keys";a:1:{s:4:"role";a:2:{s:5:"table";s:5:"roles";s:7:"columns";a:1:{s:3:"rid";s:3:"rid";}}}s:6:"module";s:4:"user";s:4:"name";s:15:"role_permission";}s:4:"role";a:6:{s:6:"fields";a:3:{s:3:"rid";a:3:{s:4:"type";s:6:"serial";s:8:"unsigned";b:1;s:8:"not null";b:1;}s:4:"name";a:5:{s:4:"type";s:7:"varchar";s:6:"length";i:64;s:8:"not null";b:1;s:7:"default";s:0:"";s:12:"translatable";b:1;}s:6:"weight";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}}s:11:"unique keys";a:1:{s:4:"name";a:1:{i:0;s:4:"name";}}s:11:"primary key";a:1:{i:0;s:3:"rid";}s:7:"indexes";a:1:{s:11:"name_weight";a:2:{i:0;s:4:"name";i:1;s:6:"weight";}}s:6:"module";s:4:"user";s:4:"name";s:4:"role";}s:5:"users";a:7:{s:6:"fields";a:16:{s:3:"uid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:4:"name";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:60;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"pass";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:128;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"mail";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:254;s:8:"not null";b:0;s:7:"default";s:0:"";}s:5:"theme";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:9:"signature";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:16:"signature_format";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:0;}s:7:"created";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:6:"access";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:5:"login";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:6:"status";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:4:"tiny";}s:8:"timezone";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:32;s:8:"not null";b:0;}s:8:"language";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:12;s:8:"not null";b:1;s:7:"default";s:0:"";}s:7:"picture";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:4:"init";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:254;s:8:"not null";b:0;s:7:"default";s:0:"";}s:4:"data";a:4:{s:4:"type";s:4:"blob";s:8:"not null";b:0;s:4:"size";s:3:"big";s:9:"serialize";b:1;}}s:7:"indexes";a:4:{s:6:"access";a:1:{i:0;s:6:"access";}s:7:"created";a:1:{i:0;s:7:"created";}s:4:"mail";a:1:{i:0;s:4:"mail";}s:7:"picture";a:1:{i:0;s:7:"picture";}}s:11:"unique keys";a:1:{s:4:"name";a:1:{i:0;s:4:"name";}}s:11:"primary key";a:1:{i:0;s:3:"uid";}s:12:"foreign keys";a:1:{s:16:"signature_format";a:2:{s:5:"table";s:13:"filter_format";s:7:"columns";a:1:{s:16:"signature_format";s:6:"format";}}}s:6:"module";s:4:"user";s:4:"name";s:5:"users";}s:11:"users_roles";a:6:{s:6:"fields";a:2:{s:3:"uid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:3:"rid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}}s:11:"primary key";a:2:{i:0;s:3:"uid";i:1;s:3:"rid";}s:7:"indexes";a:1:{s:3:"rid";a:1:{i:0;s:3:"rid";}}s:12:"foreign keys";a:2:{s:4:"user";a:2:{s:5:"table";s:5:"users";s:7:"columns";a:1:{s:3:"uid";s:3:"uid";}}s:4:"role";a:2:{s:5:"table";s:5:"roles";s:7:"columns";a:1:{s:3:"rid";s:3:"rid";}}}s:6:"module";s:4:"user";s:4:"name";s:11:"users_roles";}s:16:"cache_admin_menu";a:5:{s:6:"fields";a:5:{s:3:"cid";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"data";a:3:{s:4:"type";s:4:"blob";s:8:"not null";b:0;s:4:"size";s:3:"big";}s:6:"expire";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"created";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:10:"serialized";a:4:{s:4:"type";s:3:"int";s:4:"size";s:5:"small";s:8:"not null";b:1;s:7:"default";i:0;}}s:7:"indexes";a:1:{s:6:"expire";a:1:{i:0;s:6:"expire";}}s:11:"primary key";a:1:{i:0;s:3:"cid";}s:6:"module";s:10:"admin_menu";s:4:"name";s:16:"cache_admin_menu";}}	0	1418195166	1
theme_registry:build:modules	a:116:{s:16:"admin_menu_links";a:6:{s:14:"render element";s:8:"elements";s:4:"type";s:6:"module";s:10:"theme path";s:28:"sites/all/modules/admin_menu";s:8:"function";s:22:"theme_admin_menu_links";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:15:"admin_menu_icon";a:8:{s:9:"variables";a:2:{s:3:"src";N;s:3:"alt";N;}s:4:"file";s:14:"admin_menu.inc";s:4:"type";s:6:"module";s:10:"theme path";s:28:"sites/all/modules/admin_menu";s:8:"function";s:21:"theme_admin_menu_icon";s:8:"includes";a:1:{i:0;s:43:"sites/all/modules/admin_menu/admin_menu.inc";}s:20:"preprocess functions";a:1:{i:0;s:35:"template_preprocess_admin_menu_icon";}s:17:"process functions";a:0:{}}s:14:"devel_querylog";a:6:{s:9:"variables";a:2:{s:6:"header";a:0:{}s:4:"rows";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:23:"sites/all/modules/devel";s:8:"function";s:20:"theme_devel_querylog";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:18:"devel_querylog_row";a:6:{s:9:"variables";a:1:{s:3:"row";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:23:"sites/all/modules/devel";s:8:"function";s:24:"theme_devel_querylog_row";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:12:"user_picture";a:6:{s:9:"variables";a:1:{s:7:"account";N;}s:8:"template";s:25:"modules/user/user-picture";s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/user";s:20:"preprocess functions";a:3:{i:0;s:19:"template_preprocess";i:1;s:32:"template_preprocess_user_picture";i:2;s:21:"contextual_preprocess";}s:17:"process functions";a:1:{i:0;s:16:"template_process";}}s:12:"user_profile";a:8:{s:14:"render element";s:8:"elements";s:8:"template";s:25:"modules/user/user-profile";s:4:"file";s:14:"user.pages.inc";s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/user";s:8:"includes";a:1:{i:0;s:27:"modules/user/user.pages.inc";}s:20:"preprocess functions";a:3:{i:0;s:19:"template_preprocess";i:1;s:32:"template_preprocess_user_profile";i:2;s:21:"contextual_preprocess";}s:17:"process functions";a:1:{i:0;s:16:"template_process";}}s:21:"user_profile_category";a:8:{s:14:"render element";s:7:"element";s:8:"template";s:34:"modules/user/user-profile-category";s:4:"file";s:14:"user.pages.inc";s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/user";s:8:"includes";a:1:{i:0;s:27:"modules/user/user.pages.inc";}s:20:"preprocess functions";a:3:{i:0;s:19:"template_preprocess";i:1;s:41:"template_preprocess_user_profile_category";i:2;s:21:"contextual_preprocess";}s:17:"process functions";a:1:{i:0;s:16:"template_process";}}s:17:"user_profile_item";a:8:{s:14:"render element";s:7:"element";s:8:"template";s:30:"modules/user/user-profile-item";s:4:"file";s:14:"user.pages.inc";s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/user";s:8:"includes";a:1:{i:0;s:27:"modules/user/user.pages.inc";}s:20:"preprocess functions";a:3:{i:0;s:19:"template_preprocess";i:1;s:37:"template_preprocess_user_profile_item";i:2;s:21:"contextual_preprocess";}s:17:"process functions";a:1:{i:0;s:16:"template_process";}}s:9:"user_list";a:6:{s:9:"variables";a:2:{s:5:"users";N;s:5:"title";N;}s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/user";s:8:"function";s:15:"theme_user_list";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:22:"user_admin_permissions";a:8:{s:14:"render element";s:4:"form";s:4:"file";s:14:"user.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/user";s:8:"function";s:28:"theme_user_admin_permissions";s:8:"includes";a:1:{i:0;s:27:"modules/user/user.admin.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:16:"user_admin_roles";a:8:{s:14:"render element";s:4:"form";s:4:"file";s:14:"user.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/user";s:8:"function";s:22:"theme_user_admin_roles";s:8:"includes";a:1:{i:0;s:27:"modules/user/user.admin.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:27:"user_permission_description";a:8:{s:9:"variables";a:2:{s:15:"permission_item";N;s:4:"hide";N;}s:4:"file";s:14:"user.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/user";s:8:"function";s:33:"theme_user_permission_description";s:8:"includes";a:1:{i:0;s:27:"modules/user/user.admin.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:14:"user_signature";a:6:{s:9:"variables";a:1:{s:9:"signature";N;}s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/user";s:8:"function";s:20:"theme_user_signature";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:4:"html";a:6:{s:14:"render element";s:4:"page";s:8:"template";s:19:"modules/system/html";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:20:"preprocess functions";a:3:{i:0;s:19:"template_preprocess";i:1;s:24:"template_preprocess_html";i:2;s:21:"contextual_preprocess";}s:17:"process functions";a:2:{i:0;s:16:"template_process";i:1;s:21:"template_process_html";}}s:4:"page";a:6:{s:14:"render element";s:4:"page";s:8:"template";s:19:"modules/system/page";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:20:"preprocess functions";a:3:{i:0;s:19:"template_preprocess";i:1;s:24:"template_preprocess_page";i:2;s:21:"contextual_preprocess";}s:17:"process functions";a:2:{i:0;s:16:"template_process";i:1;s:21:"template_process_page";}}s:6:"region";a:6:{s:14:"render element";s:8:"elements";s:8:"template";s:21:"modules/system/region";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:20:"preprocess functions";a:3:{i:0;s:19:"template_preprocess";i:1;s:26:"template_preprocess_region";i:2;s:21:"contextual_preprocess";}s:17:"process functions";a:1:{i:0;s:16:"template_process";}}s:15:"status_messages";a:6:{s:9:"variables";a:1:{s:7:"display";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:21:"theme_status_messages";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:4:"link";a:6:{s:9:"variables";a:3:{s:4:"text";N;s:4:"path";N;s:7:"options";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:10:"theme_link";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:5:"links";a:6:{s:9:"variables";a:3:{s:5:"links";N;s:10:"attributes";a:1:{s:5:"class";a:1:{i:0;s:5:"links";}}s:7:"heading";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:11:"theme_links";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:5:"image";a:6:{s:9:"variables";a:6:{s:4:"path";N;s:5:"width";N;s:6:"height";N;s:3:"alt";s:0:"";s:5:"title";N;s:10:"attributes";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:11:"theme_image";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:10:"breadcrumb";a:6:{s:9:"variables";a:1:{s:10:"breadcrumb";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:16:"theme_breadcrumb";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:4:"help";a:6:{s:9:"variables";a:0:{}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:10:"theme_help";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:5:"table";a:6:{s:9:"variables";a:7:{s:6:"header";N;s:4:"rows";N;s:10:"attributes";a:0:{}s:7:"caption";N;s:9:"colgroups";a:0:{}s:6:"sticky";b:1;s:5:"empty";s:0:"";}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:11:"theme_table";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:19:"tablesort_indicator";a:6:{s:9:"variables";a:1:{s:5:"style";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:25:"theme_tablesort_indicator";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:4:"mark";a:6:{s:9:"variables";a:1:{s:4:"type";i:1;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:10:"theme_mark";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:9:"item_list";a:6:{s:9:"variables";a:4:{s:5:"items";a:0:{}s:5:"title";N;s:4:"type";s:2:"ul";s:10:"attributes";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:15:"theme_item_list";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:14:"more_help_link";a:6:{s:9:"variables";a:1:{s:3:"url";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:20:"theme_more_help_link";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:9:"feed_icon";a:6:{s:9:"variables";a:2:{s:3:"url";N;s:5:"title";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:15:"theme_feed_icon";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:9:"more_link";a:6:{s:9:"variables";a:2:{s:3:"url";N;s:5:"title";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:15:"theme_more_link";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:8:"username";a:6:{s:9:"variables";a:1:{s:7:"account";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:14:"theme_username";s:20:"preprocess functions";a:1:{i:0;s:28:"template_preprocess_username";}s:17:"process functions";a:1:{i:0;s:25:"template_process_username";}}s:12:"progress_bar";a:6:{s:9:"variables";a:2:{s:7:"percent";N;s:7:"message";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:18:"theme_progress_bar";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:11:"indentation";a:6:{s:9:"variables";a:1:{s:4:"size";i:1;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:17:"theme_indentation";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:8:"html_tag";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:14:"theme_html_tag";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:16:"maintenance_page";a:6:{s:9:"variables";a:2:{s:7:"content";N;s:13:"show_messages";b:1;}s:8:"template";s:31:"modules/system/maintenance-page";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:20:"preprocess functions";a:3:{i:0;s:19:"template_preprocess";i:1;s:36:"template_preprocess_maintenance_page";i:2;s:21:"contextual_preprocess";}s:17:"process functions";a:2:{i:0;s:16:"template_process";i:1;s:33:"template_process_maintenance_page";}}s:11:"update_page";a:6:{s:9:"variables";a:2:{s:7:"content";N;s:13:"show_messages";b:1;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:17:"theme_update_page";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:12:"install_page";a:6:{s:9:"variables";a:1:{s:7:"content";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:18:"theme_install_page";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:9:"task_list";a:6:{s:9:"variables";a:2:{s:5:"items";N;s:6:"active";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:15:"theme_task_list";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:17:"authorize_message";a:6:{s:9:"variables";a:2:{s:7:"message";N;s:7:"success";b:1;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:23:"theme_authorize_message";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:16:"authorize_report";a:6:{s:9:"variables";a:1:{s:8:"messages";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:22:"theme_authorize_report";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:5:"pager";a:6:{s:9:"variables";a:4:{s:4:"tags";a:0:{}s:7:"element";i:0;s:10:"parameters";a:0:{}s:8:"quantity";i:9;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:11:"theme_pager";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:11:"pager_first";a:6:{s:9:"variables";a:3:{s:4:"text";N;s:7:"element";i:0;s:10:"parameters";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:17:"theme_pager_first";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:14:"pager_previous";a:6:{s:9:"variables";a:4:{s:4:"text";N;s:7:"element";i:0;s:8:"interval";i:1;s:10:"parameters";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:20:"theme_pager_previous";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:10:"pager_next";a:6:{s:9:"variables";a:4:{s:4:"text";N;s:7:"element";i:0;s:8:"interval";i:1;s:10:"parameters";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:16:"theme_pager_next";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:10:"pager_last";a:6:{s:9:"variables";a:3:{s:4:"text";N;s:7:"element";i:0;s:10:"parameters";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:16:"theme_pager_last";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:10:"pager_link";a:6:{s:9:"variables";a:5:{s:4:"text";N;s:8:"page_new";N;s:7:"element";N;s:10:"parameters";a:0:{}s:10:"attributes";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:16:"theme_pager_link";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:9:"menu_link";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:15:"theme_menu_link";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:9:"menu_tree";a:6:{s:14:"render element";s:4:"tree";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:15:"theme_menu_tree";s:20:"preprocess functions";a:1:{i:0;s:29:"template_preprocess_menu_tree";}s:17:"process functions";a:0:{}}s:15:"menu_local_task";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:21:"theme_menu_local_task";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:17:"menu_local_action";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:23:"theme_menu_local_action";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:16:"menu_local_tasks";a:6:{s:9:"variables";a:2:{s:7:"primary";a:0:{}s:9:"secondary";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:22:"theme_menu_local_tasks";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:6:"select";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:12:"theme_select";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:8:"fieldset";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:14:"theme_fieldset";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:5:"radio";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:11:"theme_radio";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:6:"radios";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:12:"theme_radios";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:4:"date";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:10:"theme_date";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:15:"exposed_filters";a:6:{s:14:"render element";s:4:"form";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:21:"theme_exposed_filters";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:8:"checkbox";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:14:"theme_checkbox";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:10:"checkboxes";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:16:"theme_checkboxes";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:6:"button";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:12:"theme_button";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:12:"image_button";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:18:"theme_image_button";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:6:"hidden";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:12:"theme_hidden";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:9:"textfield";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:15:"theme_textfield";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:4:"form";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:10:"theme_form";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:8:"textarea";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:14:"theme_textarea";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:8:"password";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:14:"theme_password";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:4:"file";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:10:"theme_file";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:11:"tableselect";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:17:"theme_tableselect";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:12:"form_element";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:18:"theme_form_element";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:20:"form_required_marker";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:26:"theme_form_required_marker";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:18:"form_element_label";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:24:"theme_form_element_label";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:13:"vertical_tabs";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:19:"theme_vertical_tabs";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:9:"container";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:15:"theme_container";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:18:"system_themes_page";a:8:{s:9:"variables";a:1:{s:12:"theme_groups";N;}s:4:"file";s:16:"system.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:24:"theme_system_themes_page";s:8:"includes";a:1:{i:0;s:31:"modules/system/system.admin.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:20:"system_settings_form";a:6:{s:14:"render element";s:4:"form";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:26:"theme_system_settings_form";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:12:"confirm_form";a:6:{s:14:"render element";s:4:"form";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:18:"theme_confirm_form";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:23:"system_modules_fieldset";a:8:{s:14:"render element";s:4:"form";s:4:"file";s:16:"system.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:29:"theme_system_modules_fieldset";s:8:"includes";a:1:{i:0;s:31:"modules/system/system.admin.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:27:"system_modules_incompatible";a:8:{s:9:"variables";a:1:{s:7:"message";N;}s:4:"file";s:16:"system.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:33:"theme_system_modules_incompatible";s:8:"includes";a:1:{i:0;s:31:"modules/system/system.admin.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:24:"system_modules_uninstall";a:8:{s:14:"render element";s:4:"form";s:4:"file";s:16:"system.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:30:"theme_system_modules_uninstall";s:8:"includes";a:1:{i:0;s:31:"modules/system/system.admin.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:13:"status_report";a:8:{s:14:"render element";s:12:"requirements";s:4:"file";s:16:"system.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:19:"theme_status_report";s:8:"includes";a:1:{i:0;s:31:"modules/system/system.admin.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:10:"admin_page";a:8:{s:9:"variables";a:1:{s:6:"blocks";N;}s:4:"file";s:16:"system.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:16:"theme_admin_page";s:8:"includes";a:1:{i:0;s:31:"modules/system/system.admin.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:11:"admin_block";a:8:{s:9:"variables";a:1:{s:5:"block";N;}s:4:"file";s:16:"system.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:17:"theme_admin_block";s:8:"includes";a:1:{i:0;s:31:"modules/system/system.admin.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:19:"admin_block_content";a:8:{s:9:"variables";a:1:{s:7:"content";N;}s:4:"file";s:16:"system.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:25:"theme_admin_block_content";s:8:"includes";a:1:{i:0;s:31:"modules/system/system.admin.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:18:"system_admin_index";a:8:{s:9:"variables";a:1:{s:10:"menu_items";N;}s:4:"file";s:16:"system.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:24:"theme_system_admin_index";s:8:"includes";a:1:{i:0;s:31:"modules/system/system.admin.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:17:"system_powered_by";a:6:{s:9:"variables";a:0:{}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:23:"theme_system_powered_by";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:19:"system_compact_link";a:6:{s:9:"variables";a:0:{}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:25:"theme_system_compact_link";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:25:"system_date_time_settings";a:8:{s:14:"render element";s:4:"form";s:4:"file";s:16:"system.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:31:"theme_system_date_time_settings";s:8:"includes";a:1:{i:0;s:31:"modules/system/system.admin.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:4:"node";a:6:{s:14:"render element";s:8:"elements";s:8:"template";s:17:"modules/node/node";s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/node";s:20:"preprocess functions";a:3:{i:0;s:19:"template_preprocess";i:1;s:24:"template_preprocess_node";i:2;s:21:"contextual_preprocess";}s:17:"process functions";a:1:{i:0;s:16:"template_process";}}s:17:"node_search_admin";a:6:{s:14:"render element";s:4:"form";s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/node";s:8:"function";s:23:"theme_node_search_admin";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:13:"node_add_list";a:8:{s:9:"variables";a:1:{s:7:"content";N;}s:4:"file";s:14:"node.pages.inc";s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/node";s:8:"function";s:19:"theme_node_add_list";s:8:"includes";a:1:{i:0;s:27:"modules/node/node.pages.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:12:"node_preview";a:8:{s:9:"variables";a:1:{s:4:"node";N;}s:4:"file";s:14:"node.pages.inc";s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/node";s:8:"function";s:18:"theme_node_preview";s:8:"includes";a:1:{i:0;s:27:"modules/node/node.pages.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:19:"node_admin_overview";a:8:{s:9:"variables";a:2:{s:4:"name";N;s:4:"type";N;}s:4:"file";s:17:"content_types.inc";s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/node";s:8:"function";s:25:"theme_node_admin_overview";s:8:"includes";a:1:{i:0;s:30:"modules/node/content_types.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:17:"node_recent_block";a:6:{s:9:"variables";a:1:{s:5:"nodes";N;}s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/node";s:8:"function";s:23:"theme_node_recent_block";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:19:"node_recent_content";a:6:{s:9:"variables";a:1:{s:4:"node";N;}s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/node";s:8:"function";s:25:"theme_node_recent_content";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:13:"module_filter";a:8:{s:14:"render element";s:7:"element";s:4:"file";s:23:"module_filter.theme.inc";s:4:"type";s:6:"module";s:10:"theme path";s:31:"sites/all/modules/module_filter";s:8:"function";s:19:"theme_module_filter";s:8:"includes";a:1:{i:0;s:55:"sites/all/modules/module_filter/module_filter.theme.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:33:"module_filter_system_modules_tabs";a:8:{s:14:"render element";s:4:"form";s:4:"file";s:23:"module_filter.theme.inc";s:4:"type";s:6:"module";s:10:"theme path";s:31:"sites/all/modules/module_filter";s:8:"function";s:39:"theme_module_filter_system_modules_tabs";s:8:"includes";a:1:{i:0;s:55:"sites/all/modules/module_filter/module_filter.theme.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:24:"module_filter_operations";a:8:{s:9:"variables";a:2:{s:5:"links";a:0:{}s:10:"dropbutton";b:0;}s:4:"file";s:23:"module_filter.theme.inc";s:4:"type";s:6:"module";s:10:"theme path";s:31:"sites/all/modules/module_filter";s:8:"function";s:30:"theme_module_filter_operations";s:8:"includes";a:1:{i:0;s:55:"sites/all/modules/module_filter/module_filter.theme.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:30:"locale_languages_overview_form";a:6:{s:14:"render element";s:4:"form";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/locale";s:8:"function";s:36:"theme_locale_languages_overview_form";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:31:"locale_languages_configure_form";a:6:{s:14:"render element";s:4:"form";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/locale";s:8:"function";s:37:"theme_locale_languages_configure_form";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:23:"locale_date_format_form";a:6:{s:14:"render element";s:4:"form";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/locale";s:8:"function";s:29:"theme_locale_date_format_form";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:26:"l10n_update_project_status";a:8:{s:9:"variables";a:5:{s:8:"projects";N;s:9:"languages";N;s:7:"history";N;s:9:"available";N;s:7:"updates";N;}s:4:"file";s:21:"l10n_update.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:29:"sites/all/modules/l10n_update";s:8:"function";s:32:"theme_l10n_update_project_status";s:8:"includes";a:1:{i:0;s:51:"sites/all/modules/l10n_update/l10n_update.admin.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:34:"l10n_update_single_project_wrapper";a:8:{s:7:"project";a:5:{s:7:"project";N;s:14:"project_status";N;s:9:"languages";N;s:7:"history";N;s:7:"updates";N;}s:4:"file";s:21:"l10n_update.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:29:"sites/all/modules/l10n_update";s:8:"function";s:40:"theme_l10n_update_single_project_wrapper";s:8:"includes";a:1:{i:0;s:51:"sites/all/modules/l10n_update/l10n_update.admin.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:33:"l10n_update_single_project_status";a:8:{s:9:"variables";a:3:{s:7:"project";N;s:6:"server";N;s:6:"status";N;}s:4:"file";s:21:"l10n_update.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:29:"sites/all/modules/l10n_update";s:8:"function";s:39:"theme_l10n_update_single_project_status";s:8:"includes";a:1:{i:0;s:51:"sites/all/modules/l10n_update/l10n_update.admin.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:27:"l10n_update_current_release";a:8:{s:9:"variables";a:3:{s:8:"language";N;s:7:"release";N;s:6:"status";N;}s:4:"file";s:21:"l10n_update.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:29:"sites/all/modules/l10n_update";s:8:"function";s:33:"theme_l10n_update_current_release";s:8:"includes";a:1:{i:0;s:51:"sites/all/modules/l10n_update/l10n_update.admin.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:29:"l10n_update_available_release";a:8:{s:9:"variables";a:1:{s:7:"release";N;}s:4:"file";s:21:"l10n_update.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:29:"sites/all/modules/l10n_update";s:8:"function";s:35:"theme_l10n_update_available_release";s:8:"includes";a:1:{i:0;s:51:"sites/all/modules/l10n_update/l10n_update.admin.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:26:"l10n_update_version_status";a:8:{s:9:"variables";a:2:{s:6:"status";N;s:4:"type";N;}s:4:"file";s:21:"l10n_update.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:29:"sites/all/modules/l10n_update";s:8:"function";s:32:"theme_l10n_update_version_status";s:8:"includes";a:1:{i:0;s:51:"sites/all/modules/l10n_update/l10n_update.admin.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:21:"filter_admin_overview";a:8:{s:14:"render element";s:4:"form";s:4:"file";s:16:"filter.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/filter";s:8:"function";s:27:"theme_filter_admin_overview";s:8:"includes";a:1:{i:0;s:31:"modules/filter/filter.admin.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:32:"filter_admin_format_filter_order";a:8:{s:14:"render element";s:7:"element";s:4:"file";s:16:"filter.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/filter";s:8:"function";s:38:"theme_filter_admin_format_filter_order";s:8:"includes";a:1:{i:0;s:31:"modules/filter/filter.admin.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:11:"filter_tips";a:8:{s:9:"variables";a:2:{s:4:"tips";N;s:4:"long";b:0;}s:4:"file";s:16:"filter.pages.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/filter";s:8:"function";s:17:"theme_filter_tips";s:8:"includes";a:1:{i:0;s:31:"modules/filter/filter.pages.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:19:"text_format_wrapper";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/filter";s:8:"function";s:25:"theme_text_format_wrapper";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:21:"filter_tips_more_info";a:6:{s:9:"variables";a:0:{}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/filter";s:8:"function";s:27:"theme_filter_tips_more_info";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:17:"filter_guidelines";a:6:{s:9:"variables";a:1:{s:6:"format";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/filter";s:8:"function";s:23:"theme_filter_guidelines";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:5:"field";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:13:"modules/field";s:8:"function";s:11:"theme_field";s:20:"preprocess functions";a:1:{i:0;s:25:"template_preprocess_field";}s:17:"process functions";a:1:{i:0;s:22:"template_process_field";}}s:25:"field_multiple_value_form";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:13:"modules/field";s:8:"function";s:31:"theme_field_multiple_value_form";s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:13:"dblog_message";a:8:{s:9:"variables";a:2:{s:5:"event";N;s:4:"link";b:0;}s:4:"file";s:15:"dblog.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:13:"modules/dblog";s:8:"function";s:19:"theme_dblog_message";s:8:"includes";a:1:{i:0;s:29:"modules/dblog/dblog.admin.inc";}s:20:"preprocess functions";a:0:{}s:17:"process functions";a:0:{}}s:5:"block";a:6:{s:14:"render element";s:8:"elements";s:8:"template";s:19:"modules/block/block";s:4:"type";s:6:"module";s:10:"theme path";s:13:"modules/block";s:20:"preprocess functions";a:4:{i:0;s:19:"template_preprocess";i:1;s:25:"template_preprocess_block";i:2;s:21:"contextual_preprocess";i:3;s:23:"system_preprocess_block";}s:17:"process functions";a:1:{i:0;s:16:"template_process";}}s:24:"block_admin_display_form";a:8:{s:8:"template";s:38:"modules/block/block-admin-display-form";s:4:"file";s:15:"block.admin.inc";s:14:"render element";s:4:"form";s:4:"type";s:6:"module";s:10:"theme path";s:13:"modules/block";s:8:"includes";a:1:{i:0;s:29:"modules/block/block.admin.inc";}s:20:"preprocess functions";a:3:{i:0;s:19:"template_preprocess";i:1;s:44:"template_preprocess_block_admin_display_form";i:2;s:21:"contextual_preprocess";}s:17:"process functions";a:1:{i:0;s:16:"template_process";}}}	0	1418195166	1
theme_registry:bartik	a:117:{s:9:"menu_tree";a:5:{s:8:"function";s:16:"bartik_menu_tree";s:4:"type";s:12:"theme_engine";s:10:"theme path";s:13:"themes/bartik";s:14:"render element";s:4:"tree";s:20:"preprocess functions";a:1:{i:0;s:29:"template_preprocess_menu_tree";}}s:30:"field__taxonomy_term_reference";a:5:{s:8:"function";s:37:"bartik_field__taxonomy_term_reference";s:14:"render element";s:7:"element";s:9:"base hook";s:5:"field";s:4:"type";s:12:"theme_engine";s:10:"theme path";s:13:"themes/bartik";}s:16:"maintenance_page";a:7:{s:8:"template";s:16:"maintenance-page";s:4:"path";s:23:"themes/bartik/templates";s:4:"type";s:12:"theme_engine";s:10:"theme path";s:13:"themes/bartik";s:9:"variables";a:2:{s:7:"content";N;s:13:"show_messages";b:1;}s:20:"preprocess functions";a:4:{i:0;s:19:"template_preprocess";i:1;s:36:"template_preprocess_maintenance_page";i:2;s:21:"contextual_preprocess";i:3;s:34:"bartik_preprocess_maintenance_page";}s:17:"process functions";a:3:{i:0;s:16:"template_process";i:1;s:33:"template_process_maintenance_page";i:2;s:31:"bartik_process_maintenance_page";}}s:4:"node";a:7:{s:8:"template";s:4:"node";s:4:"path";s:23:"themes/bartik/templates";s:4:"type";s:12:"theme_engine";s:10:"theme path";s:13:"themes/bartik";s:14:"render element";s:8:"elements";s:20:"preprocess functions";a:4:{i:0;s:19:"template_preprocess";i:1;s:24:"template_preprocess_node";i:2;s:21:"contextual_preprocess";i:3;s:22:"bartik_preprocess_node";}s:17:"process functions";a:1:{i:0;s:16:"template_process";}}s:4:"page";a:7:{s:8:"template";s:4:"page";s:4:"path";s:23:"themes/bartik/templates";s:4:"type";s:12:"theme_engine";s:10:"theme path";s:13:"themes/bartik";s:14:"render element";s:4:"page";s:20:"preprocess functions";a:3:{i:0;s:19:"template_preprocess";i:1;s:24:"template_preprocess_page";i:2;s:21:"contextual_preprocess";}s:17:"process functions";a:3:{i:0;s:16:"template_process";i:1;s:21:"template_process_page";i:2;s:19:"bartik_process_page";}}s:16:"admin_menu_links";a:4:{s:14:"render element";s:8:"elements";s:4:"type";s:6:"module";s:10:"theme path";s:28:"sites/all/modules/admin_menu";s:8:"function";s:22:"theme_admin_menu_links";}s:15:"admin_menu_icon";a:7:{s:9:"variables";a:2:{s:3:"src";N;s:3:"alt";N;}s:4:"file";s:14:"admin_menu.inc";s:4:"type";s:6:"module";s:10:"theme path";s:28:"sites/all/modules/admin_menu";s:8:"function";s:21:"theme_admin_menu_icon";s:8:"includes";a:1:{i:0;s:43:"sites/all/modules/admin_menu/admin_menu.inc";}s:20:"preprocess functions";a:1:{i:0;s:35:"template_preprocess_admin_menu_icon";}}s:14:"devel_querylog";a:4:{s:9:"variables";a:2:{s:6:"header";a:0:{}s:4:"rows";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:23:"sites/all/modules/devel";s:8:"function";s:20:"theme_devel_querylog";}s:18:"devel_querylog_row";a:4:{s:9:"variables";a:1:{s:3:"row";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:23:"sites/all/modules/devel";s:8:"function";s:24:"theme_devel_querylog_row";}s:12:"user_picture";a:6:{s:9:"variables";a:1:{s:7:"account";N;}s:8:"template";s:25:"modules/user/user-picture";s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/user";s:20:"preprocess functions";a:3:{i:0;s:19:"template_preprocess";i:1;s:32:"template_preprocess_user_picture";i:2;s:21:"contextual_preprocess";}s:17:"process functions";a:1:{i:0;s:16:"template_process";}}s:12:"user_profile";a:8:{s:14:"render element";s:8:"elements";s:8:"template";s:25:"modules/user/user-profile";s:4:"file";s:14:"user.pages.inc";s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/user";s:8:"includes";a:1:{i:0;s:27:"modules/user/user.pages.inc";}s:20:"preprocess functions";a:3:{i:0;s:19:"template_preprocess";i:1;s:32:"template_preprocess_user_profile";i:2;s:21:"contextual_preprocess";}s:17:"process functions";a:1:{i:0;s:16:"template_process";}}s:21:"user_profile_category";a:8:{s:14:"render element";s:7:"element";s:8:"template";s:34:"modules/user/user-profile-category";s:4:"file";s:14:"user.pages.inc";s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/user";s:8:"includes";a:1:{i:0;s:27:"modules/user/user.pages.inc";}s:20:"preprocess functions";a:3:{i:0;s:19:"template_preprocess";i:1;s:41:"template_preprocess_user_profile_category";i:2;s:21:"contextual_preprocess";}s:17:"process functions";a:1:{i:0;s:16:"template_process";}}s:17:"user_profile_item";a:8:{s:14:"render element";s:7:"element";s:8:"template";s:30:"modules/user/user-profile-item";s:4:"file";s:14:"user.pages.inc";s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/user";s:8:"includes";a:1:{i:0;s:27:"modules/user/user.pages.inc";}s:20:"preprocess functions";a:3:{i:0;s:19:"template_preprocess";i:1;s:37:"template_preprocess_user_profile_item";i:2;s:21:"contextual_preprocess";}s:17:"process functions";a:1:{i:0;s:16:"template_process";}}s:9:"user_list";a:4:{s:9:"variables";a:2:{s:5:"users";N;s:5:"title";N;}s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/user";s:8:"function";s:15:"theme_user_list";}s:22:"user_admin_permissions";a:6:{s:14:"render element";s:4:"form";s:4:"file";s:14:"user.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/user";s:8:"function";s:28:"theme_user_admin_permissions";s:8:"includes";a:1:{i:0;s:27:"modules/user/user.admin.inc";}}s:16:"user_admin_roles";a:6:{s:14:"render element";s:4:"form";s:4:"file";s:14:"user.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/user";s:8:"function";s:22:"theme_user_admin_roles";s:8:"includes";a:1:{i:0;s:27:"modules/user/user.admin.inc";}}s:27:"user_permission_description";a:6:{s:9:"variables";a:2:{s:15:"permission_item";N;s:4:"hide";N;}s:4:"file";s:14:"user.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/user";s:8:"function";s:33:"theme_user_permission_description";s:8:"includes";a:1:{i:0;s:27:"modules/user/user.admin.inc";}}s:14:"user_signature";a:4:{s:9:"variables";a:1:{s:9:"signature";N;}s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/user";s:8:"function";s:20:"theme_user_signature";}s:4:"html";a:6:{s:14:"render element";s:4:"page";s:8:"template";s:19:"modules/system/html";s:4:"type";s:6:"module";s:10:"theme path";s:13:"themes/bartik";s:20:"preprocess functions";a:4:{i:0;s:19:"template_preprocess";i:1;s:24:"template_preprocess_html";i:2;s:21:"contextual_preprocess";i:3;s:22:"bartik_preprocess_html";}s:17:"process functions";a:3:{i:0;s:16:"template_process";i:1;s:21:"template_process_html";i:2;s:19:"bartik_process_html";}}s:6:"region";a:6:{s:14:"render element";s:8:"elements";s:8:"template";s:21:"modules/system/region";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:20:"preprocess functions";a:3:{i:0;s:19:"template_preprocess";i:1;s:26:"template_preprocess_region";i:2;s:21:"contextual_preprocess";}s:17:"process functions";a:1:{i:0;s:16:"template_process";}}s:15:"status_messages";a:4:{s:9:"variables";a:1:{s:7:"display";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:21:"theme_status_messages";}s:4:"link";a:4:{s:9:"variables";a:3:{s:4:"text";N;s:4:"path";N;s:7:"options";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:10:"theme_link";}s:5:"links";a:4:{s:9:"variables";a:3:{s:5:"links";N;s:10:"attributes";a:1:{s:5:"class";a:1:{i:0;s:5:"links";}}s:7:"heading";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:11:"theme_links";}s:5:"image";a:4:{s:9:"variables";a:6:{s:4:"path";N;s:5:"width";N;s:6:"height";N;s:3:"alt";s:0:"";s:5:"title";N;s:10:"attributes";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:11:"theme_image";}s:10:"breadcrumb";a:4:{s:9:"variables";a:1:{s:10:"breadcrumb";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:16:"theme_breadcrumb";}s:4:"help";a:4:{s:9:"variables";a:0:{}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:10:"theme_help";}s:5:"table";a:4:{s:9:"variables";a:7:{s:6:"header";N;s:4:"rows";N;s:10:"attributes";a:0:{}s:7:"caption";N;s:9:"colgroups";a:0:{}s:6:"sticky";b:1;s:5:"empty";s:0:"";}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:11:"theme_table";}s:19:"tablesort_indicator";a:4:{s:9:"variables";a:1:{s:5:"style";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:25:"theme_tablesort_indicator";}s:4:"mark";a:4:{s:9:"variables";a:1:{s:4:"type";i:1;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:10:"theme_mark";}s:9:"item_list";a:4:{s:9:"variables";a:4:{s:5:"items";a:0:{}s:5:"title";N;s:4:"type";s:2:"ul";s:10:"attributes";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:15:"theme_item_list";}s:14:"more_help_link";a:4:{s:9:"variables";a:1:{s:3:"url";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:20:"theme_more_help_link";}s:9:"feed_icon";a:4:{s:9:"variables";a:2:{s:3:"url";N;s:5:"title";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:15:"theme_feed_icon";}s:9:"more_link";a:4:{s:9:"variables";a:2:{s:3:"url";N;s:5:"title";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:15:"theme_more_link";}s:8:"username";a:6:{s:9:"variables";a:1:{s:7:"account";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:14:"theme_username";s:20:"preprocess functions";a:1:{i:0;s:28:"template_preprocess_username";}s:17:"process functions";a:1:{i:0;s:25:"template_process_username";}}s:12:"progress_bar";a:4:{s:9:"variables";a:2:{s:7:"percent";N;s:7:"message";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:18:"theme_progress_bar";}s:11:"indentation";a:4:{s:9:"variables";a:1:{s:4:"size";i:1;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:17:"theme_indentation";}s:8:"html_tag";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:14:"theme_html_tag";}s:11:"update_page";a:4:{s:9:"variables";a:2:{s:7:"content";N;s:13:"show_messages";b:1;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:17:"theme_update_page";}s:12:"install_page";a:4:{s:9:"variables";a:1:{s:7:"content";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:18:"theme_install_page";}s:9:"task_list";a:4:{s:9:"variables";a:2:{s:5:"items";N;s:6:"active";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:15:"theme_task_list";}s:17:"authorize_message";a:4:{s:9:"variables";a:2:{s:7:"message";N;s:7:"success";b:1;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:23:"theme_authorize_message";}s:16:"authorize_report";a:4:{s:9:"variables";a:1:{s:8:"messages";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:22:"theme_authorize_report";}s:5:"pager";a:4:{s:9:"variables";a:4:{s:4:"tags";a:0:{}s:7:"element";i:0;s:10:"parameters";a:0:{}s:8:"quantity";i:9;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:11:"theme_pager";}s:11:"pager_first";a:4:{s:9:"variables";a:3:{s:4:"text";N;s:7:"element";i:0;s:10:"parameters";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:17:"theme_pager_first";}s:14:"pager_previous";a:4:{s:9:"variables";a:4:{s:4:"text";N;s:7:"element";i:0;s:8:"interval";i:1;s:10:"parameters";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:20:"theme_pager_previous";}s:10:"pager_next";a:4:{s:9:"variables";a:4:{s:4:"text";N;s:7:"element";i:0;s:8:"interval";i:1;s:10:"parameters";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:16:"theme_pager_next";}s:10:"pager_last";a:4:{s:9:"variables";a:3:{s:4:"text";N;s:7:"element";i:0;s:10:"parameters";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:16:"theme_pager_last";}s:10:"pager_link";a:4:{s:9:"variables";a:5:{s:4:"text";N;s:8:"page_new";N;s:7:"element";N;s:10:"parameters";a:0:{}s:10:"attributes";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:16:"theme_pager_link";}s:9:"menu_link";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:15:"theme_menu_link";}s:15:"menu_local_task";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:21:"theme_menu_local_task";}s:17:"menu_local_action";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:23:"theme_menu_local_action";}s:16:"menu_local_tasks";a:4:{s:9:"variables";a:2:{s:7:"primary";a:0:{}s:9:"secondary";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:22:"theme_menu_local_tasks";}s:6:"select";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:12:"theme_select";}s:8:"fieldset";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:14:"theme_fieldset";}s:5:"radio";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:11:"theme_radio";}s:6:"radios";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:12:"theme_radios";}s:4:"date";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:10:"theme_date";}s:15:"exposed_filters";a:4:{s:14:"render element";s:4:"form";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:21:"theme_exposed_filters";}s:8:"checkbox";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:14:"theme_checkbox";}s:10:"checkboxes";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:16:"theme_checkboxes";}s:6:"button";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:12:"theme_button";}s:12:"image_button";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:18:"theme_image_button";}s:6:"hidden";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:12:"theme_hidden";}s:9:"textfield";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:15:"theme_textfield";}s:4:"form";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:10:"theme_form";}s:8:"textarea";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:14:"theme_textarea";}s:8:"password";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:14:"theme_password";}s:4:"file";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:10:"theme_file";}s:11:"tableselect";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:17:"theme_tableselect";}s:12:"form_element";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:18:"theme_form_element";}s:20:"form_required_marker";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:26:"theme_form_required_marker";}s:18:"form_element_label";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:24:"theme_form_element_label";}s:13:"vertical_tabs";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:19:"theme_vertical_tabs";}s:9:"container";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:15:"theme_container";}s:18:"system_themes_page";a:6:{s:9:"variables";a:1:{s:12:"theme_groups";N;}s:4:"file";s:16:"system.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:24:"theme_system_themes_page";s:8:"includes";a:1:{i:0;s:31:"modules/system/system.admin.inc";}}s:20:"system_settings_form";a:4:{s:14:"render element";s:4:"form";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:26:"theme_system_settings_form";}s:12:"confirm_form";a:4:{s:14:"render element";s:4:"form";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:18:"theme_confirm_form";}s:23:"system_modules_fieldset";a:6:{s:14:"render element";s:4:"form";s:4:"file";s:16:"system.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:29:"theme_system_modules_fieldset";s:8:"includes";a:1:{i:0;s:31:"modules/system/system.admin.inc";}}s:27:"system_modules_incompatible";a:6:{s:9:"variables";a:1:{s:7:"message";N;}s:4:"file";s:16:"system.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:33:"theme_system_modules_incompatible";s:8:"includes";a:1:{i:0;s:31:"modules/system/system.admin.inc";}}s:24:"system_modules_uninstall";a:6:{s:14:"render element";s:4:"form";s:4:"file";s:16:"system.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:30:"theme_system_modules_uninstall";s:8:"includes";a:1:{i:0;s:31:"modules/system/system.admin.inc";}}s:13:"status_report";a:6:{s:14:"render element";s:12:"requirements";s:4:"file";s:16:"system.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:19:"theme_status_report";s:8:"includes";a:1:{i:0;s:31:"modules/system/system.admin.inc";}}s:10:"admin_page";a:6:{s:9:"variables";a:1:{s:6:"blocks";N;}s:4:"file";s:16:"system.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:16:"theme_admin_page";s:8:"includes";a:1:{i:0;s:31:"modules/system/system.admin.inc";}}s:11:"admin_block";a:6:{s:9:"variables";a:1:{s:5:"block";N;}s:4:"file";s:16:"system.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:17:"theme_admin_block";s:8:"includes";a:1:{i:0;s:31:"modules/system/system.admin.inc";}}s:19:"admin_block_content";a:6:{s:9:"variables";a:1:{s:7:"content";N;}s:4:"file";s:16:"system.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:25:"theme_admin_block_content";s:8:"includes";a:1:{i:0;s:31:"modules/system/system.admin.inc";}}s:18:"system_admin_index";a:6:{s:9:"variables";a:1:{s:10:"menu_items";N;}s:4:"file";s:16:"system.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:24:"theme_system_admin_index";s:8:"includes";a:1:{i:0;s:31:"modules/system/system.admin.inc";}}s:17:"system_powered_by";a:4:{s:9:"variables";a:0:{}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:23:"theme_system_powered_by";}s:19:"system_compact_link";a:4:{s:9:"variables";a:0:{}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:25:"theme_system_compact_link";}s:25:"system_date_time_settings";a:6:{s:14:"render element";s:4:"form";s:4:"file";s:16:"system.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:31:"theme_system_date_time_settings";s:8:"includes";a:1:{i:0;s:31:"modules/system/system.admin.inc";}}s:17:"node_search_admin";a:4:{s:14:"render element";s:4:"form";s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/node";s:8:"function";s:23:"theme_node_search_admin";}s:13:"node_add_list";a:6:{s:9:"variables";a:1:{s:7:"content";N;}s:4:"file";s:14:"node.pages.inc";s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/node";s:8:"function";s:19:"theme_node_add_list";s:8:"includes";a:1:{i:0;s:27:"modules/node/node.pages.inc";}}s:12:"node_preview";a:6:{s:9:"variables";a:1:{s:4:"node";N;}s:4:"file";s:14:"node.pages.inc";s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/node";s:8:"function";s:18:"theme_node_preview";s:8:"includes";a:1:{i:0;s:27:"modules/node/node.pages.inc";}}s:19:"node_admin_overview";a:6:{s:9:"variables";a:2:{s:4:"name";N;s:4:"type";N;}s:4:"file";s:17:"content_types.inc";s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/node";s:8:"function";s:25:"theme_node_admin_overview";s:8:"includes";a:1:{i:0;s:30:"modules/node/content_types.inc";}}s:17:"node_recent_block";a:4:{s:9:"variables";a:1:{s:5:"nodes";N;}s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/node";s:8:"function";s:23:"theme_node_recent_block";}s:19:"node_recent_content";a:4:{s:9:"variables";a:1:{s:4:"node";N;}s:4:"type";s:6:"module";s:10:"theme path";s:12:"modules/node";s:8:"function";s:25:"theme_node_recent_content";}s:13:"module_filter";a:6:{s:14:"render element";s:7:"element";s:4:"file";s:23:"module_filter.theme.inc";s:4:"type";s:6:"module";s:10:"theme path";s:31:"sites/all/modules/module_filter";s:8:"function";s:19:"theme_module_filter";s:8:"includes";a:1:{i:0;s:55:"sites/all/modules/module_filter/module_filter.theme.inc";}}s:33:"module_filter_system_modules_tabs";a:6:{s:14:"render element";s:4:"form";s:4:"file";s:23:"module_filter.theme.inc";s:4:"type";s:6:"module";s:10:"theme path";s:31:"sites/all/modules/module_filter";s:8:"function";s:39:"theme_module_filter_system_modules_tabs";s:8:"includes";a:1:{i:0;s:55:"sites/all/modules/module_filter/module_filter.theme.inc";}}s:24:"module_filter_operations";a:6:{s:9:"variables";a:2:{s:5:"links";a:0:{}s:10:"dropbutton";b:0;}s:4:"file";s:23:"module_filter.theme.inc";s:4:"type";s:6:"module";s:10:"theme path";s:31:"sites/all/modules/module_filter";s:8:"function";s:30:"theme_module_filter_operations";s:8:"includes";a:1:{i:0;s:55:"sites/all/modules/module_filter/module_filter.theme.inc";}}s:30:"locale_languages_overview_form";a:4:{s:14:"render element";s:4:"form";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/locale";s:8:"function";s:36:"theme_locale_languages_overview_form";}s:31:"locale_languages_configure_form";a:4:{s:14:"render element";s:4:"form";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/locale";s:8:"function";s:37:"theme_locale_languages_configure_form";}s:23:"locale_date_format_form";a:4:{s:14:"render element";s:4:"form";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/locale";s:8:"function";s:29:"theme_locale_date_format_form";}s:26:"l10n_update_project_status";a:6:{s:9:"variables";a:5:{s:8:"projects";N;s:9:"languages";N;s:7:"history";N;s:9:"available";N;s:7:"updates";N;}s:4:"file";s:21:"l10n_update.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:29:"sites/all/modules/l10n_update";s:8:"function";s:32:"theme_l10n_update_project_status";s:8:"includes";a:1:{i:0;s:51:"sites/all/modules/l10n_update/l10n_update.admin.inc";}}s:34:"l10n_update_single_project_wrapper";a:6:{s:7:"project";a:5:{s:7:"project";N;s:14:"project_status";N;s:9:"languages";N;s:7:"history";N;s:7:"updates";N;}s:4:"file";s:21:"l10n_update.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:29:"sites/all/modules/l10n_update";s:8:"function";s:40:"theme_l10n_update_single_project_wrapper";s:8:"includes";a:1:{i:0;s:51:"sites/all/modules/l10n_update/l10n_update.admin.inc";}}s:33:"l10n_update_single_project_status";a:6:{s:9:"variables";a:3:{s:7:"project";N;s:6:"server";N;s:6:"status";N;}s:4:"file";s:21:"l10n_update.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:29:"sites/all/modules/l10n_update";s:8:"function";s:39:"theme_l10n_update_single_project_status";s:8:"includes";a:1:{i:0;s:51:"sites/all/modules/l10n_update/l10n_update.admin.inc";}}s:27:"l10n_update_current_release";a:6:{s:9:"variables";a:3:{s:8:"language";N;s:7:"release";N;s:6:"status";N;}s:4:"file";s:21:"l10n_update.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:29:"sites/all/modules/l10n_update";s:8:"function";s:33:"theme_l10n_update_current_release";s:8:"includes";a:1:{i:0;s:51:"sites/all/modules/l10n_update/l10n_update.admin.inc";}}s:29:"l10n_update_available_release";a:6:{s:9:"variables";a:1:{s:7:"release";N;}s:4:"file";s:21:"l10n_update.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:29:"sites/all/modules/l10n_update";s:8:"function";s:35:"theme_l10n_update_available_release";s:8:"includes";a:1:{i:0;s:51:"sites/all/modules/l10n_update/l10n_update.admin.inc";}}s:26:"l10n_update_version_status";a:6:{s:9:"variables";a:2:{s:6:"status";N;s:4:"type";N;}s:4:"file";s:21:"l10n_update.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:29:"sites/all/modules/l10n_update";s:8:"function";s:32:"theme_l10n_update_version_status";s:8:"includes";a:1:{i:0;s:51:"sites/all/modules/l10n_update/l10n_update.admin.inc";}}s:21:"filter_admin_overview";a:6:{s:14:"render element";s:4:"form";s:4:"file";s:16:"filter.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/filter";s:8:"function";s:27:"theme_filter_admin_overview";s:8:"includes";a:1:{i:0;s:31:"modules/filter/filter.admin.inc";}}s:32:"filter_admin_format_filter_order";a:6:{s:14:"render element";s:7:"element";s:4:"file";s:16:"filter.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/filter";s:8:"function";s:38:"theme_filter_admin_format_filter_order";s:8:"includes";a:1:{i:0;s:31:"modules/filter/filter.admin.inc";}}s:11:"filter_tips";a:6:{s:9:"variables";a:2:{s:4:"tips";N;s:4:"long";b:0;}s:4:"file";s:16:"filter.pages.inc";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/filter";s:8:"function";s:17:"theme_filter_tips";s:8:"includes";a:1:{i:0;s:31:"modules/filter/filter.pages.inc";}}s:19:"text_format_wrapper";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/filter";s:8:"function";s:25:"theme_text_format_wrapper";}s:21:"filter_tips_more_info";a:4:{s:9:"variables";a:0:{}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/filter";s:8:"function";s:27:"theme_filter_tips_more_info";}s:17:"filter_guidelines";a:4:{s:9:"variables";a:1:{s:6:"format";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/filter";s:8:"function";s:23:"theme_filter_guidelines";}s:5:"field";a:6:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:13:"modules/field";s:8:"function";s:11:"theme_field";s:20:"preprocess functions";a:1:{i:0;s:25:"template_preprocess_field";}s:17:"process functions";a:1:{i:0;s:22:"template_process_field";}}s:25:"field_multiple_value_form";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:13:"modules/field";s:8:"function";s:31:"theme_field_multiple_value_form";}s:13:"dblog_message";a:6:{s:9:"variables";a:2:{s:5:"event";N;s:4:"link";b:0;}s:4:"file";s:15:"dblog.admin.inc";s:4:"type";s:6:"module";s:10:"theme path";s:13:"modules/dblog";s:8:"function";s:19:"theme_dblog_message";s:8:"includes";a:1:{i:0;s:29:"modules/dblog/dblog.admin.inc";}}s:5:"block";a:6:{s:14:"render element";s:8:"elements";s:8:"template";s:19:"modules/block/block";s:4:"type";s:6:"module";s:10:"theme path";s:13:"themes/bartik";s:20:"preprocess functions";a:5:{i:0;s:19:"template_preprocess";i:1;s:25:"template_preprocess_block";i:2;s:21:"contextual_preprocess";i:3;s:23:"system_preprocess_block";i:4;s:23:"bartik_preprocess_block";}s:17:"process functions";a:1:{i:0;s:16:"template_process";}}s:24:"block_admin_display_form";a:8:{s:8:"template";s:38:"modules/block/block-admin-display-form";s:4:"file";s:15:"block.admin.inc";s:14:"render element";s:4:"form";s:4:"type";s:6:"module";s:10:"theme path";s:13:"modules/block";s:8:"includes";a:1:{i:0;s:29:"modules/block/block.admin.inc";}s:20:"preprocess functions";a:3:{i:0;s:19:"template_preprocess";i:1;s:44:"template_preprocess_block_admin_display_form";i:2;s:21:"contextual_preprocess";}s:17:"process functions";a:1:{i:0;s:16:"template_process";}}}	0	1418195166	1
entity_info:en	a:3:{s:4:"node";a:15:{s:5:"label";s:4:"Node";s:16:"controller class";s:14:"NodeController";s:10:"base table";s:4:"node";s:14:"revision table";s:13:"node_revision";s:12:"uri callback";s:8:"node_uri";s:9:"fieldable";b:1;s:11:"entity keys";a:5:{s:2:"id";s:3:"nid";s:8:"revision";s:3:"vid";s:6:"bundle";s:4:"type";s:5:"label";s:5:"title";s:8:"language";s:8:"language";}s:11:"bundle keys";a:1:{s:6:"bundle";s:4:"type";}s:7:"bundles";a:0:{}s:10:"view modes";a:3:{s:4:"full";a:2:{s:5:"label";s:12:"Full content";s:15:"custom settings";b:0;}s:6:"teaser";a:2:{s:5:"label";s:6:"Teaser";s:15:"custom settings";b:1;}s:3:"rss";a:2:{s:5:"label";s:3:"RSS";s:15:"custom settings";b:0;}}s:12:"static cache";b:1;s:11:"field cache";b:1;s:9:"load hook";s:9:"node_load";s:11:"translation";a:1:{s:6:"locale";b:1;}s:17:"schema_fields_sql";a:2:{s:10:"base table";a:14:{i:0;s:3:"nid";i:1;s:3:"vid";i:2;s:4:"type";i:3;s:8:"language";i:4;s:5:"title";i:5;s:3:"uid";i:6;s:6:"status";i:7;s:7:"created";i:8;s:7:"changed";i:9;s:7:"comment";i:10;s:7:"promote";i:11;s:6:"sticky";i:12;s:4:"tnid";i:13;s:9:"translate";}s:14:"revision table";a:10:{i:0;s:3:"nid";i:1;s:3:"vid";i:2;s:3:"uid";i:3;s:5:"title";i:4;s:3:"log";i:5;s:9:"timestamp";i:6;s:6:"status";i:7;s:7:"comment";i:8;s:7:"promote";i:9;s:6:"sticky";}}}s:4:"file";a:12:{s:5:"label";s:4:"File";s:10:"base table";s:12:"file_managed";s:11:"entity keys";a:4:{s:2:"id";s:3:"fid";s:5:"label";s:8:"filename";s:8:"revision";s:0:"";s:6:"bundle";s:0:"";}s:12:"static cache";b:0;s:9:"fieldable";b:0;s:16:"controller class";s:29:"DrupalDefaultEntityController";s:11:"field cache";b:1;s:9:"load hook";s:9:"file_load";s:7:"bundles";a:1:{s:4:"file";a:1:{s:5:"label";s:4:"File";}}s:10:"view modes";a:0:{}s:11:"translation";a:0:{}s:17:"schema_fields_sql";a:1:{s:10:"base table";a:8:{i:0;s:3:"fid";i:1;s:3:"uid";i:2;s:8:"filename";i:3;s:3:"uri";i:4;s:8:"filemime";i:5;s:8:"filesize";i:6;s:6:"status";i:7;s:9:"timestamp";}}}s:4:"user";a:14:{s:5:"label";s:4:"User";s:16:"controller class";s:14:"UserController";s:10:"base table";s:5:"users";s:12:"uri callback";s:8:"user_uri";s:14:"label callback";s:15:"format_username";s:9:"fieldable";b:1;s:11:"entity keys";a:3:{s:2:"id";s:3:"uid";s:8:"revision";s:0:"";s:6:"bundle";s:0:"";}s:7:"bundles";a:1:{s:4:"user";a:2:{s:5:"label";s:4:"User";s:5:"admin";a:2:{s:4:"path";s:28:"admin/config/people/accounts";s:16:"access arguments";a:1:{i:0;s:16:"administer users";}}}}s:10:"view modes";a:1:{s:4:"full";a:2:{s:5:"label";s:12:"User account";s:15:"custom settings";b:0;}}s:12:"static cache";b:1;s:11:"field cache";b:1;s:9:"load hook";s:9:"user_load";s:11:"translation";a:0:{}s:17:"schema_fields_sql";a:1:{s:10:"base table";a:16:{i:0;s:3:"uid";i:1;s:4:"name";i:2;s:4:"pass";i:3;s:4:"mail";i:4;s:5:"theme";i:5;s:9:"signature";i:6;s:16:"signature_format";i:7;s:7:"created";i:8;s:6:"access";i:9;s:5:"login";i:10;s:6:"status";i:11;s:8:"timezone";i:12;s:8:"language";i:13;s:7:"picture";i:14;s:4:"init";i:15;s:4:"data";}}}}	0	1418195166	1
schema:runtime:1	a:6:{s:11:"menu_router";a:5:{s:6:"fields";a:23:{s:4:"path";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:14:"load_functions";a:2:{s:4:"type";s:4:"blob";s:8:"not null";b:1;}s:16:"to_arg_functions";a:2:{s:4:"type";s:4:"blob";s:8:"not null";b:1;}s:15:"access_callback";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:16:"access_arguments";a:2:{s:4:"type";s:4:"blob";s:8:"not null";b:0;}s:13:"page_callback";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:14:"page_arguments";a:2:{s:4:"type";s:4:"blob";s:8:"not null";b:0;}s:17:"delivery_callback";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:3:"fit";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:12:"number_parts";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:5:"small";}s:7:"context";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:10:"tab_parent";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:8:"tab_root";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:5:"title";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:14:"title_callback";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:15:"title_arguments";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:14:"theme_callback";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:15:"theme_arguments";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"type";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:11:"description";a:2:{s:4:"type";s:4:"text";s:8:"not null";b:1;}s:8:"position";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:6:"weight";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:12:"include_file";a:2:{s:4:"type";s:4:"text";s:4:"size";s:6:"medium";}}s:7:"indexes";a:3:{s:3:"fit";a:1:{i:0;s:3:"fit";}s:10:"tab_parent";a:3:{i:0;a:2:{i:0;s:10:"tab_parent";i:1;i:64;}i:1;s:6:"weight";i:2;s:5:"title";}s:21:"tab_root_weight_title";a:3:{i:0;a:2:{i:0;s:8:"tab_root";i:1;i:64;}i:1;s:6:"weight";i:2;s:5:"title";}}s:11:"primary key";a:1:{i:0;s:4:"path";}s:6:"module";s:6:"system";s:4:"name";s:11:"menu_router";}s:10:"menu_links";a:5:{s:6:"fields";a:25:{s:9:"menu_name";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:32;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"mlid";a:3:{s:4:"type";s:6:"serial";s:8:"unsigned";b:1;s:8:"not null";b:1;}s:4:"plid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:9:"link_path";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:11:"router_path";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:10:"link_title";a:5:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";s:12:"translatable";b:1;}s:7:"options";a:3:{s:4:"type";s:4:"blob";s:8:"not null";b:0;s:12:"translatable";b:1;}s:6:"module";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:6:"system";}s:6:"hidden";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:5:"small";}s:8:"external";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:5:"small";}s:12:"has_children";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:5:"small";}s:8:"expanded";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:5:"small";}s:6:"weight";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:5:"depth";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:5:"small";}s:10:"customized";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:5:"small";}s:2:"p1";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:2:"p2";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:2:"p3";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:2:"p4";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:2:"p5";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:2:"p6";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:2:"p7";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:2:"p8";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:2:"p9";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:7:"updated";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:5:"small";}}s:7:"indexes";a:4:{s:9:"path_menu";a:2:{i:0;a:2:{i:0;s:9:"link_path";i:1;i:128;}i:1;s:9:"menu_name";}s:22:"menu_plid_expand_child";a:4:{i:0;s:9:"menu_name";i:1;s:4:"plid";i:2;s:8:"expanded";i:3;s:12:"has_children";}s:12:"menu_parents";a:10:{i:0;s:9:"menu_name";i:1;s:2:"p1";i:2;s:2:"p2";i:3;s:2:"p3";i:4;s:2:"p4";i:5;s:2:"p5";i:6;s:2:"p6";i:7;s:2:"p7";i:8;s:2:"p8";i:9;s:2:"p9";}s:11:"router_path";a:1:{i:0;a:2:{i:0;s:11:"router_path";i:1;i:128;}}}s:11:"primary key";a:1:{i:0;s:4:"mlid";}s:6:"module";s:6:"system";s:4:"name";s:10:"menu_links";}s:4:"node";a:7:{s:6:"fields";a:14:{s:3:"nid";a:3:{s:4:"type";s:6:"serial";s:8:"unsigned";b:1;s:8:"not null";b:1;}s:3:"vid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:7:"default";N;}s:4:"type";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:32;s:8:"not null";b:1;s:7:"default";s:0:"";}s:8:"language";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:12;s:8:"not null";b:1;s:7:"default";s:0:"";}s:5:"title";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:3:"uid";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:6:"status";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:1;}s:7:"created";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"changed";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"comment";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"promote";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:6:"sticky";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:4:"tnid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:9:"translate";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}}s:7:"indexes";a:10:{s:12:"node_changed";a:1:{i:0;s:7:"changed";}s:12:"node_created";a:1:{i:0;s:7:"created";}s:14:"node_frontpage";a:4:{i:0;s:7:"promote";i:1;s:6:"status";i:2;s:6:"sticky";i:3;s:7:"created";}s:16:"node_status_type";a:3:{i:0;s:6:"status";i:1;s:4:"type";i:2;s:3:"nid";}s:15:"node_title_type";a:2:{i:0;s:5:"title";i:1;a:2:{i:0;s:4:"type";i:1;i:4;}}s:9:"node_type";a:1:{i:0;a:2:{i:0;s:4:"type";i:1;i:4;}}s:3:"uid";a:1:{i:0;s:3:"uid";}s:4:"tnid";a:1:{i:0;s:4:"tnid";}s:9:"translate";a:1:{i:0;s:9:"translate";}s:8:"language";a:1:{i:0;s:8:"language";}}s:11:"unique keys";a:1:{s:3:"vid";a:1:{i:0;s:3:"vid";}}s:12:"foreign keys";a:2:{s:13:"node_revision";a:2:{s:5:"table";s:13:"node_revision";s:7:"columns";a:1:{s:3:"vid";s:3:"vid";}}s:11:"node_author";a:2:{s:5:"table";s:5:"users";s:7:"columns";a:1:{s:3:"uid";s:3:"uid";}}}s:11:"primary key";a:1:{i:0;s:3:"nid";}s:6:"module";s:4:"node";s:4:"name";s:4:"node";}s:13:"node_revision";a:6:{s:6:"fields";a:10:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:3:"vid";a:3:{s:4:"type";s:6:"serial";s:8:"unsigned";b:1;s:8:"not null";b:1;}s:3:"uid";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:5:"title";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:3:"log";a:3:{s:4:"type";s:4:"text";s:8:"not null";b:1;s:4:"size";s:3:"big";}s:9:"timestamp";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:6:"status";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:1;}s:7:"comment";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:7:"promote";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:6:"sticky";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}}s:7:"indexes";a:2:{s:3:"nid";a:1:{i:0;s:3:"nid";}s:3:"uid";a:1:{i:0;s:3:"uid";}}s:11:"primary key";a:1:{i:0;s:3:"vid";}s:12:"foreign keys";a:2:{s:14:"versioned_node";a:2:{s:5:"table";s:4:"node";s:7:"columns";a:1:{s:3:"nid";s:3:"nid";}}s:14:"version_author";a:2:{s:5:"table";s:5:"users";s:7:"columns";a:1:{s:3:"uid";s:3:"uid";}}}s:6:"module";s:4:"node";s:4:"name";s:13:"node_revision";}s:12:"file_managed";a:7:{s:6:"fields";a:8:{s:3:"fid";a:3:{s:4:"type";s:6:"serial";s:8:"unsigned";b:1;s:8:"not null";b:1;}s:3:"uid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:8:"filename";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:3:"uri";a:5:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";s:6:"binary";b:1;}s:8:"filemime";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:8:"filesize";a:5:{s:4:"type";s:3:"int";s:4:"size";s:3:"big";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:6:"status";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:4:"tiny";}s:9:"timestamp";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}}s:7:"indexes";a:3:{s:3:"uid";a:1:{i:0;s:3:"uid";}s:6:"status";a:1:{i:0;s:6:"status";}s:9:"timestamp";a:1:{i:0;s:9:"timestamp";}}s:11:"unique keys";a:1:{s:3:"uri";a:1:{i:0;s:3:"uri";}}s:11:"primary key";a:1:{i:0;s:3:"fid";}s:12:"foreign keys";a:1:{s:10:"file_owner";a:2:{s:5:"table";s:5:"users";s:7:"columns";a:1:{s:3:"uid";s:3:"uid";}}}s:6:"module";s:6:"system";s:4:"name";s:12:"file_managed";}s:5:"users";a:7:{s:6:"fields";a:16:{s:3:"uid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:1;s:7:"default";i:0;}s:4:"name";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:60;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"pass";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:128;s:8:"not null";b:1;s:7:"default";s:0:"";}s:4:"mail";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:254;s:8:"not null";b:0;s:7:"default";s:0:"";}s:5:"theme";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:9:"signature";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:1;s:7:"default";s:0:"";}s:16:"signature_format";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:255;s:8:"not null";b:0;}s:7:"created";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:6:"access";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:5:"login";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:6:"status";a:4:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;s:4:"size";s:4:"tiny";}s:8:"timezone";a:3:{s:4:"type";s:7:"varchar";s:6:"length";i:32;s:8:"not null";b:0;}s:8:"language";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:12;s:8:"not null";b:1;s:7:"default";s:0:"";}s:7:"picture";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:1;s:7:"default";i:0;}s:4:"init";a:4:{s:4:"type";s:7:"varchar";s:6:"length";i:254;s:8:"not null";b:0;s:7:"default";s:0:"";}s:4:"data";a:4:{s:4:"type";s:4:"blob";s:8:"not null";b:0;s:4:"size";s:3:"big";s:9:"serialize";b:1;}}s:7:"indexes";a:4:{s:6:"access";a:1:{i:0;s:6:"access";}s:7:"created";a:1:{i:0;s:7:"created";}s:4:"mail";a:1:{i:0;s:4:"mail";}s:7:"picture";a:1:{i:0;s:7:"picture";}}s:11:"unique keys";a:1:{s:4:"name";a:1:{i:0;s:4:"name";}}s:11:"primary key";a:1:{i:0;s:3:"uid";}s:12:"foreign keys";a:1:{s:16:"signature_format";a:2:{s:5:"table";s:13:"filter_format";s:7:"columns";a:1:{s:16:"signature_format";s:6:"format";}}}s:6:"module";s:4:"user";s:4:"name";s:5:"users";}}	0	1418195166	1
theme_registry:runtime:bartik	a:117:{s:9:"menu_tree";a:5:{s:8:"function";s:16:"bartik_menu_tree";s:4:"type";s:12:"theme_engine";s:10:"theme path";s:13:"themes/bartik";s:14:"render element";s:4:"tree";s:20:"preprocess functions";a:1:{i:0;s:29:"template_preprocess_menu_tree";}}s:30:"field__taxonomy_term_reference";N;s:16:"maintenance_page";N;s:4:"node";N;s:4:"page";a:7:{s:8:"template";s:4:"page";s:4:"path";s:23:"themes/bartik/templates";s:4:"type";s:12:"theme_engine";s:10:"theme path";s:13:"themes/bartik";s:14:"render element";s:4:"page";s:20:"preprocess functions";a:3:{i:0;s:19:"template_preprocess";i:1;s:24:"template_preprocess_page";i:2;s:21:"contextual_preprocess";}s:17:"process functions";a:3:{i:0;s:16:"template_process";i:1;s:21:"template_process_page";i:2;s:19:"bartik_process_page";}}s:16:"admin_menu_links";a:4:{s:14:"render element";s:8:"elements";s:4:"type";s:6:"module";s:10:"theme path";s:28:"sites/all/modules/admin_menu";s:8:"function";s:22:"theme_admin_menu_links";}s:15:"admin_menu_icon";a:7:{s:9:"variables";a:2:{s:3:"src";N;s:3:"alt";N;}s:4:"file";s:14:"admin_menu.inc";s:4:"type";s:6:"module";s:10:"theme path";s:28:"sites/all/modules/admin_menu";s:8:"function";s:21:"theme_admin_menu_icon";s:8:"includes";a:1:{i:0;s:43:"sites/all/modules/admin_menu/admin_menu.inc";}s:20:"preprocess functions";a:1:{i:0;s:35:"template_preprocess_admin_menu_icon";}}s:14:"devel_querylog";N;s:18:"devel_querylog_row";N;s:12:"user_picture";N;s:12:"user_profile";N;s:21:"user_profile_category";N;s:17:"user_profile_item";N;s:9:"user_list";N;s:22:"user_admin_permissions";N;s:16:"user_admin_roles";N;s:27:"user_permission_description";N;s:14:"user_signature";N;s:4:"html";a:6:{s:14:"render element";s:4:"page";s:8:"template";s:19:"modules/system/html";s:4:"type";s:6:"module";s:10:"theme path";s:13:"themes/bartik";s:20:"preprocess functions";a:4:{i:0;s:19:"template_preprocess";i:1;s:24:"template_preprocess_html";i:2;s:21:"contextual_preprocess";i:3;s:22:"bartik_preprocess_html";}s:17:"process functions";a:3:{i:0;s:16:"template_process";i:1;s:21:"template_process_html";i:2;s:19:"bartik_process_html";}}s:6:"region";a:6:{s:14:"render element";s:8:"elements";s:8:"template";s:21:"modules/system/region";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:20:"preprocess functions";a:3:{i:0;s:19:"template_preprocess";i:1;s:26:"template_preprocess_region";i:2;s:21:"contextual_preprocess";}s:17:"process functions";a:1:{i:0;s:16:"template_process";}}s:15:"status_messages";a:4:{s:9:"variables";a:1:{s:7:"display";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:21:"theme_status_messages";}s:4:"link";a:4:{s:9:"variables";a:3:{s:4:"text";N;s:4:"path";N;s:7:"options";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:10:"theme_link";}s:5:"links";a:4:{s:9:"variables";a:3:{s:5:"links";N;s:10:"attributes";a:1:{s:5:"class";a:1:{i:0;s:5:"links";}}s:7:"heading";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:11:"theme_links";}s:5:"image";N;s:10:"breadcrumb";a:4:{s:9:"variables";a:1:{s:10:"breadcrumb";N;}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:16:"theme_breadcrumb";}s:4:"help";N;s:5:"table";a:4:{s:9:"variables";a:7:{s:6:"header";N;s:4:"rows";N;s:10:"attributes";a:0:{}s:7:"caption";N;s:9:"colgroups";a:0:{}s:6:"sticky";b:1;s:5:"empty";s:0:"";}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:11:"theme_table";}s:19:"tablesort_indicator";N;s:4:"mark";N;s:9:"item_list";a:4:{s:9:"variables";a:4:{s:5:"items";a:0:{}s:5:"title";N;s:4:"type";s:2:"ul";s:10:"attributes";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:15:"theme_item_list";}s:14:"more_help_link";N;s:9:"feed_icon";N;s:9:"more_link";N;s:8:"username";N;s:12:"progress_bar";N;s:11:"indentation";N;s:8:"html_tag";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:14:"theme_html_tag";}s:11:"update_page";N;s:12:"install_page";N;s:9:"task_list";N;s:17:"authorize_message";N;s:16:"authorize_report";N;s:5:"pager";N;s:11:"pager_first";N;s:14:"pager_previous";N;s:10:"pager_next";N;s:10:"pager_last";N;s:10:"pager_link";N;s:9:"menu_link";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:15:"theme_menu_link";}s:15:"menu_local_task";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:21:"theme_menu_local_task";}s:17:"menu_local_action";N;s:16:"menu_local_tasks";a:4:{s:9:"variables";a:2:{s:7:"primary";a:0:{}s:9:"secondary";a:0:{}}s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:22:"theme_menu_local_tasks";}s:6:"select";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:12:"theme_select";}s:8:"fieldset";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:14:"theme_fieldset";}s:5:"radio";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:11:"theme_radio";}s:6:"radios";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:12:"theme_radios";}s:4:"date";N;s:15:"exposed_filters";N;s:8:"checkbox";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:14:"theme_checkbox";}s:10:"checkboxes";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:16:"theme_checkboxes";}s:6:"button";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:12:"theme_button";}s:12:"image_button";N;s:6:"hidden";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:12:"theme_hidden";}s:9:"textfield";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:15:"theme_textfield";}s:4:"form";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:10:"theme_form";}s:8:"textarea";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:14:"theme_textarea";}s:8:"password";N;s:4:"file";N;s:11:"tableselect";N;s:12:"form_element";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:18:"theme_form_element";}s:20:"form_required_marker";N;s:18:"form_element_label";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:24:"theme_form_element_label";}s:13:"vertical_tabs";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:19:"theme_vertical_tabs";}s:9:"container";a:4:{s:14:"render element";s:7:"element";s:4:"type";s:6:"module";s:10:"theme path";s:14:"modules/system";s:8:"function";s:15:"theme_container";}s:18:"system_themes_page";N;s:20:"system_settings_form";N;s:12:"confirm_form";N;s:23:"system_modules_fieldset";N;s:27:"system_modules_incompatible";N;s:24:"system_modules_uninstall";N;s:13:"status_report";N;s:10:"admin_page";N;s:11:"admin_block";N;s:19:"admin_block_content";N;s:18:"system_admin_index";N;s:17:"system_powered_by";N;s:19:"system_compact_link";N;s:25:"system_date_time_settings";N;s:17:"node_search_admin";N;s:13:"node_add_list";N;s:12:"node_preview";N;s:19:"node_admin_overview";N;s:17:"node_recent_block";N;s:19:"node_recent_content";N;s:13:"module_filter";a:6:{s:14:"render element";s:7:"element";s:4:"file";s:23:"module_filter.theme.inc";s:4:"type";s:6:"module";s:10:"theme path";s:31:"sites/all/modules/module_filter";s:8:"function";s:19:"theme_module_filter";s:8:"includes";a:1:{i:0;s:55:"sites/all/modules/module_filter/module_filter.theme.inc";}}s:33:"module_filter_system_modules_tabs";a:6:{s:14:"render element";s:4:"form";s:4:"file";s:23:"module_filter.theme.inc";s:4:"type";s:6:"module";s:10:"theme path";s:31:"sites/all/modules/module_filter";s:8:"function";s:39:"theme_module_filter_system_modules_tabs";s:8:"includes";a:1:{i:0;s:55:"sites/all/modules/module_filter/module_filter.theme.inc";}}s:24:"module_filter_operations";a:6:{s:9:"variables";a:2:{s:5:"links";a:0:{}s:10:"dropbutton";b:0;}s:4:"file";s:23:"module_filter.theme.inc";s:4:"type";s:6:"module";s:10:"theme path";s:31:"sites/all/modules/module_filter";s:8:"function";s:30:"theme_module_filter_operations";s:8:"includes";a:1:{i:0;s:55:"sites/all/modules/module_filter/module_filter.theme.inc";}}s:30:"locale_languages_overview_form";N;s:31:"locale_languages_configure_form";N;s:23:"locale_date_format_form";N;s:26:"l10n_update_project_status";N;s:34:"l10n_update_single_project_wrapper";N;s:33:"l10n_update_single_project_status";N;s:27:"l10n_update_current_release";N;s:29:"l10n_update_available_release";N;s:26:"l10n_update_version_status";N;s:21:"filter_admin_overview";N;s:32:"filter_admin_format_filter_order";N;s:11:"filter_tips";N;s:19:"text_format_wrapper";N;s:21:"filter_tips_more_info";N;s:17:"filter_guidelines";N;s:5:"field";N;s:25:"field_multiple_value_form";N;s:13:"dblog_message";N;s:5:"block";a:6:{s:14:"render element";s:8:"elements";s:8:"template";s:19:"modules/block/block";s:4:"type";s:6:"module";s:10:"theme path";s:13:"themes/bartik";s:20:"preprocess functions";a:5:{i:0;s:19:"template_preprocess";i:1;s:25:"template_preprocess_block";i:2;s:21:"contextual_preprocess";i:3;s:23:"system_preprocess_block";i:4;s:23:"bartik_preprocess_block";}s:17:"process functions";a:1:{i:0;s:16:"template_process";}}s:24:"block_admin_display_form";N;}	0	1418195170	1
\.


--
-- Data for Name: cache_admin_menu; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY cache_admin_menu (cid, data, expire, created, serialized) FROM stdin;
admin_menu:1:k2Jk6ajihHN-jmflYb-4BC_ZTmOLpm772eYCjHJN1V4:en	232bd76554e84a4b958ccf1035c673e1	0	1418195171	0
\.


--
-- Data for Name: cache_block; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY cache_block (cid, data, expire, created, serialized) FROM stdin;
\.


--
-- Data for Name: cache_bootstrap; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY cache_bootstrap (cid, data, expire, created, serialized) FROM stdin;
hook_info	a:4:{s:10:"token_info";a:1:{s:5:"group";s:6:"tokens";}s:16:"token_info_alter";a:1:{s:5:"group";s:6:"tokens";}s:6:"tokens";a:1:{s:5:"group";s:6:"tokens";}s:12:"tokens_alter";a:1:{s:5:"group";s:6:"tokens";}}	0	1418195166	1
module_implements	a:67:{s:15:"stream_wrappers";a:1:{s:6:"system";b:0;}s:23:"module_implements_alter";a:0:{}s:21:"stream_wrappers_alter";a:0:{}s:17:"url_inbound_alter";a:0:{}s:12:"custom_theme";a:1:{s:6:"system";b:0;}s:11:"admin_paths";a:5:{s:5:"block";b:0;s:4:"node";b:0;s:6:"system";b:0;s:4:"user";b:0;s:5:"devel";b:0;}s:17:"admin_paths_alter";a:0:{}s:19:"menu_get_item_alter";a:0:{}s:18:"url_outbound_alter";a:1:{s:6:"locale";b:0;}s:13:"library_alter";a:2:{s:6:"locale";b:0;s:5:"devel";b:0;}s:4:"init";a:4:{s:5:"dblog";b:0;s:6:"locale";b:0;s:6:"system";b:0;s:5:"devel";b:0;}s:17:"date_format_types";a:1:{s:6:"system";b:0;}s:23:"date_format_types_alter";a:0:{}s:22:"menu_site_status_alter";a:1:{s:4:"user";b:0;}s:17:"system_info_alter";a:4:{s:5:"field";b:0;s:6:"system";b:0;s:4:"user";b:0;s:10:"admin_menu";b:0;}s:10:"permission";a:10:{s:5:"block";b:0;s:10:"contextual";b:0;s:6:"filter";b:0;s:6:"locale";b:0;s:13:"module_filter";b:0;s:4:"node";b:0;s:6:"system";b:0;s:4:"user";b:0;s:5:"devel";b:0;s:10:"admin_menu";b:0;}s:12:"element_info";a:5:{s:10:"contextual";b:0;s:6:"filter";b:0;s:13:"module_filter";b:0;s:6:"system";b:0;s:4:"user";b:0;}s:18:"element_info_alter";a:0:{}s:10:"form_alter";a:3:{s:11:"l10n_update";b:0;s:6:"locale";b:0;s:10:"admin_menu";b:0;}s:25:"form_system_modules_alter";a:2:{s:13:"module_filter";b:0;s:5:"devel";b:0;}s:28:"page_delivery_callback_alter";a:0:{}s:10:"page_build";a:3:{s:5:"block";b:0;s:10:"admin_menu";b:0;s:18:"admin_menu_toolbar";b:0;}s:11:"query_alter";a:0:{}s:22:"query_block_load_alter";a:0:{}s:24:"query_translatable_alter";a:0:{}s:16:"block_list_alter";a:2:{s:5:"block";b:0;s:4:"node";b:0;}s:9:"node_info";a:0:{}s:28:"query_node_type_access_alter";a:0:{}s:11:"node_grants";a:0:{}s:22:"menu_local_tasks_alter";a:1:{s:4:"node";b:0;}s:4:"help";a:14:{s:5:"block";b:0;s:10:"contextual";b:0;s:5:"dblog";b:0;s:5:"field";b:0;s:17:"field_sql_storage";b:0;s:6:"filter";b:0;s:11:"l10n_update";b:0;s:6:"locale";b:0;s:4:"node";b:0;s:6:"system";b:0;s:4:"text";b:0;s:4:"user";b:0;s:5:"devel";b:0;s:10:"admin_menu";b:0;}s:16:"block_view_alter";a:0:{}s:28:"block_view_system_help_alter";a:0:{}s:28:"block_view_system_main_alter";a:0:{}s:32:"query_preferred_menu_links_alter";a:0:{}s:34:"block_view_system_navigation_alter";a:0:{}s:27:"block_view_user_login_alter";a:0:{}s:34:"block_view_system_management_alter";a:0:{}s:14:"admin_menu_map";a:2:{s:6:"filter";b:0;s:4:"node";b:0;}s:20:"admin_menu_map_alter";a:0:{}s:6:"schema";a:11:{s:5:"block";b:0;s:5:"dblog";b:0;s:5:"field";b:0;s:17:"field_sql_storage";b:0;s:6:"filter";b:0;s:11:"l10n_update";b:0;s:6:"locale";b:0;s:4:"node";b:0;s:6:"system";b:0;s:4:"user";b:0;s:10:"admin_menu";b:0;}s:12:"schema_alter";a:1:{s:11:"l10n_update";b:0;}s:5:"theme";a:12:{s:5:"block";b:0;s:5:"dblog";b:0;s:5:"field";b:0;s:6:"filter";b:0;s:11:"l10n_update";b:0;s:6:"locale";b:0;s:13:"module_filter";b:0;s:4:"node";b:0;s:6:"system";b:0;s:4:"user";b:0;s:5:"devel";b:0;s:10:"admin_menu";b:0;}s:20:"theme_registry_alter";a:0:{}s:14:"file_url_alter";a:0:{}s:21:"admin_menu_cache_info";a:2:{s:6:"system";b:0;s:10:"admin_menu";b:0;}s:26:"translated_menu_link_alter";a:3:{s:4:"user";b:0;s:5:"devel";b:0;s:10:"admin_menu";b:0;}s:14:"username_alter";a:0:{}s:11:"entity_info";a:3:{s:4:"node";b:0;s:6:"system";b:0;s:4:"user";b:0;}s:17:"entity_info_alter";a:1:{s:6:"locale";b:0;}s:30:"query_user_load_multiple_alter";a:0:{}s:22:"field_storage_pre_load";a:0:{}s:17:"field_attach_load";a:0:{}s:11:"entity_load";a:0:{}s:9:"user_load";a:0:{}s:23:"admin_menu_output_build";a:2:{s:10:"admin_menu";b:0;s:18:"admin_menu_toolbar";b:0;}s:23:"admin_menu_output_alter";a:2:{s:10:"admin_menu";b:0;s:18:"admin_menu_toolbar";b:0;}s:23:"admin_menu_replacements";a:1:{s:10:"admin_menu";b:0;}s:10:"page_alter";a:2:{s:6:"system";b:0;s:5:"devel";b:0;}s:21:"menu_breadcrumb_alter";a:0:{}s:27:"menu_contextual_links_alter";a:0:{}s:27:"contextual_links_view_alter";a:0:{}s:8:"js_alter";a:1:{s:6:"locale";b:0;}s:15:"html_head_alter";a:0:{}s:9:"css_alter";a:1:{s:6:"locale";b:0;}s:4:"exit";a:0:{}s:32:"form_block_admin_configure_alter";a:1:{s:4:"node";b:0;}}	0	1418195170	1
lookup_cache	a:2:{s:30:"cDrupalDefaultEntityController";s:19:"includes/entity.inc";s:20:"cSelectQueryExtender";s:28:"includes/database/select.inc";}	0	1418195175	1
system_list	a:3:{s:14:"module_enabled";a:19:{s:5:"block";O:8:"stdClass":9:{s:8:"filename";s:26:"modules/block/block.module";s:4:"name";s:5:"block";s:4:"type";s:6:"module";s:5:"owner";s:0:"";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:4:"7009";s:6:"weight";s:2:"-5";s:4:"info";a:13:{s:4:"name";s:5:"Block";s:11:"description";s:140:"Controls the visual building blocks a page is constructed with. Blocks are boxes of content rendered into an area, or region, of a web page.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:10:"block.test";}s:9:"configure";s:21:"admin/structure/block";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}}s:11:"admin_devel";O:8:"stdClass":9:{s:8:"filename";s:59:"sites/all/modules/admin_menu/admin_devel/admin_devel.module";s:4:"name";s:11:"admin_devel";s:4:"type";s:6:"module";s:5:"owner";s:0:"";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:1:"0";s:6:"weight";s:1:"0";s:4:"info";a:13:{s:4:"name";s:32:"Administration Development tools";s:11:"description";s:76:"Administration and debugging functionality for developers and site builders.";s:7:"package";s:14:"Administration";s:4:"core";s:3:"7.x";s:7:"scripts";a:1:{s:14:"admin_devel.js";s:55:"sites/all/modules/admin_menu/admin_devel/admin_devel.js";}s:7:"version";s:11:"7.x-3.0-rc4";s:7:"project";s:10:"admin_menu";s:9:"datestamp";s:10:"1359651687";s:5:"mtime";i:1359651687;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}}s:10:"contextual";O:8:"stdClass":9:{s:8:"filename";s:36:"modules/contextual/contextual.module";s:4:"name";s:10:"contextual";s:4:"type";s:6:"module";s:5:"owner";s:0:"";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:1:"0";s:6:"weight";s:1:"0";s:4:"info";a:12:{s:4:"name";s:16:"Contextual links";s:11:"description";s:75:"Provides contextual links to perform actions related to elements on a page.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:15:"contextual.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}}s:5:"dblog";O:8:"stdClass":9:{s:8:"filename";s:26:"modules/dblog/dblog.module";s:4:"name";s:5:"dblog";s:4:"type";s:6:"module";s:5:"owner";s:0:"";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"1";s:14:"schema_version";s:4:"7002";s:6:"weight";s:1:"0";s:4:"info";a:12:{s:4:"name";s:16:"Database logging";s:11:"description";s:47:"Logs and records system events to the database.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:10:"dblog.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}}s:14:"devel_generate";O:8:"stdClass":9:{s:8:"filename";s:60:"sites/all/modules/devel/devel_generate/devel_generate.module";s:4:"name";s:14:"devel_generate";s:4:"type";s:6:"module";s:5:"owner";s:0:"";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:1:"0";s:6:"weight";s:1:"0";s:4:"info";a:14:{s:4:"name";s:14:"Devel generate";s:11:"description";s:48:"Generate dummy users, nodes, and taxonomy terms.";s:7:"package";s:11:"Development";s:4:"core";s:3:"7.x";s:4:"tags";a:1:{i:0;s:9:"developer";}s:9:"configure";s:33:"admin/config/development/generate";s:5:"files";a:1:{i:0;s:19:"devel_generate.test";}s:7:"version";s:7:"7.x-1.5";s:7:"project";s:5:"devel";s:9:"datestamp";s:10:"1398963366";s:5:"mtime";i:1398963366;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}}s:5:"field";O:8:"stdClass":9:{s:8:"filename";s:26:"modules/field/field.module";s:4:"name";s:5:"field";s:4:"type";s:6:"module";s:5:"owner";s:0:"";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:4:"7003";s:6:"weight";s:1:"0";s:4:"info";a:14:{s:4:"name";s:5:"Field";s:11:"description";s:57:"Field API to add fields to entities like nodes and users.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:4:{i:0;s:12:"field.module";i:1;s:16:"field.attach.inc";i:2;s:20:"field.info.class.inc";i:3;s:16:"tests/field.test";}s:12:"dependencies";a:1:{i:0;s:17:"field_sql_storage";}s:8:"required";b:1;s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:15:"theme/field.css";s:29:"modules/field/theme/field.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}}s:17:"field_sql_storage";O:8:"stdClass":9:{s:8:"filename";s:64:"modules/field/modules/field_sql_storage/field_sql_storage.module";s:4:"name";s:17:"field_sql_storage";s:4:"type";s:6:"module";s:5:"owner";s:0:"";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:4:"7002";s:6:"weight";s:1:"0";s:4:"info";a:13:{s:4:"name";s:17:"Field SQL storage";s:11:"description";s:37:"Stores field data in an SQL database.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:5:"field";}s:5:"files";a:1:{i:0;s:22:"field_sql_storage.test";}s:8:"required";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}}s:6:"filter";O:8:"stdClass":9:{s:8:"filename";s:28:"modules/filter/filter.module";s:4:"name";s:6:"filter";s:4:"type";s:6:"module";s:5:"owner";s:0:"";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:4:"7010";s:6:"weight";s:1:"0";s:4:"info";a:14:{s:4:"name";s:6:"Filter";s:11:"description";s:43:"Filters content in preparation for display.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:11:"filter.test";}s:8:"required";b:1;s:9:"configure";s:28:"admin/config/content/formats";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}}s:11:"l10n_update";O:8:"stdClass":9:{s:8:"filename";s:48:"sites/all/modules/l10n_update/l10n_update.module";s:4:"name";s:11:"l10n_update";s:4:"type";s:6:"module";s:5:"owner";s:0:"";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:4:"7006";s:6:"weight";s:1:"0";s:4:"info";a:12:{s:4:"name";s:19:"Localization update";s:11:"description";s:58:"Provides automatic downloads and updates for translations.";s:12:"dependencies";a:1:{i:0;s:6:"locale";}s:4:"core";s:3:"7.x";s:7:"package";s:12:"Multilingual";s:5:"files";a:1:{i:0;s:22:"l10n_update.parser.inc";}s:7:"version";s:7:"7.x-1.1";s:7:"project";s:11:"l10n_update";s:9:"datestamp";s:10:"1415605322";s:5:"mtime";i:1415605322;s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}}s:6:"locale";O:8:"stdClass":9:{s:8:"filename";s:28:"modules/locale/locale.module";s:4:"name";s:6:"locale";s:4:"type";s:6:"module";s:5:"owner";s:0:"";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:4:"7005";s:6:"weight";s:1:"0";s:4:"info";a:13:{s:4:"name";s:6:"Locale";s:11:"description";s:119:"Adds language handling functionality and enables the translation of the user interface to languages other than English.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:11:"locale.test";}s:9:"configure";s:30:"admin/config/regional/language";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}}s:13:"module_filter";O:8:"stdClass":9:{s:8:"filename";s:52:"sites/all/modules/module_filter/module_filter.module";s:4:"name";s:13:"module_filter";s:4:"type";s:6:"module";s:5:"owner";s:0:"";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:4:"7201";s:6:"weight";s:1:"0";s:4:"info";a:13:{s:4:"name";s:13:"Module filter";s:11:"description";s:24:"Filter the modules list.";s:4:"core";s:3:"7.x";s:7:"package";s:14:"Administration";s:5:"files";a:9:{i:0;s:21:"module_filter.install";i:1;s:16:"module_filter.js";i:2;s:20:"module_filter.module";i:3;s:23:"module_filter.admin.inc";i:4;s:23:"module_filter.theme.inc";i:5;s:21:"css/module_filter.css";i:6;s:25:"css/module_filter_tab.css";i:7;s:19:"js/module_filter.js";i:8;s:23:"js/module_filter_tab.js";}s:9:"configure";s:40:"admin/config/user-interface/modulefilter";s:7:"version";s:14:"7.x-2.0-alpha2";s:7:"project";s:13:"module_filter";s:9:"datestamp";s:10:"1386356916";s:5:"mtime";i:1386356916;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}}s:4:"node";O:8:"stdClass":9:{s:8:"filename";s:24:"modules/node/node.module";s:4:"name";s:4:"node";s:4:"type";s:6:"module";s:5:"owner";s:0:"";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:4:"7014";s:6:"weight";s:1:"0";s:4:"info";a:15:{s:4:"name";s:4:"Node";s:11:"description";s:66:"Allows content to be submitted to the site and displayed on pages.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:2:{i:0;s:11:"node.module";i:1;s:9:"node.test";}s:8:"required";b:1;s:9:"configure";s:21:"admin/structure/types";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:8:"node.css";s:21:"modules/node/node.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}}s:6:"system";O:8:"stdClass":9:{s:8:"filename";s:28:"modules/system/system.module";s:4:"name";s:6:"system";s:4:"type";s:6:"module";s:5:"owner";s:0:"";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:4:"7079";s:6:"weight";s:1:"0";s:4:"info";a:14:{s:4:"name";s:6:"System";s:11:"description";s:54:"Handles general site configuration for administrators.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:6:{i:0;s:19:"system.archiver.inc";i:1;s:15:"system.mail.inc";i:2;s:16:"system.queue.inc";i:3;s:14:"system.tar.inc";i:4;s:18:"system.updater.inc";i:5;s:11:"system.test";}s:8:"required";b:1;s:9:"configure";s:19:"admin/config/system";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}}s:4:"text";O:8:"stdClass":9:{s:8:"filename";s:38:"modules/field/modules/text/text.module";s:4:"name";s:4:"text";s:4:"type";s:6:"module";s:5:"owner";s:0:"";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:4:"7000";s:6:"weight";s:1:"0";s:4:"info";a:13:{s:4:"name";s:4:"Text";s:11:"description";s:32:"Defines simple text field types.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:5:"field";}s:5:"files";a:1:{i:0;s:9:"text.test";}s:8:"required";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}}s:4:"user";O:8:"stdClass":9:{s:8:"filename";s:24:"modules/user/user.module";s:4:"name";s:4:"user";s:4:"type";s:6:"module";s:5:"owner";s:0:"";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:4:"7018";s:6:"weight";s:1:"0";s:4:"info";a:15:{s:4:"name";s:4:"User";s:11:"description";s:47:"Manages the user registration and login system.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:2:{i:0;s:11:"user.module";i:1;s:9:"user.test";}s:8:"required";b:1;s:9:"configure";s:19:"admin/config/people";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:8:"user.css";s:21:"modules/user/user.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}}s:5:"devel";O:8:"stdClass":9:{s:8:"filename";s:36:"sites/all/modules/devel/devel.module";s:4:"name";s:5:"devel";s:4:"type";s:6:"module";s:5:"owner";s:0:"";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"1";s:14:"schema_version";s:4:"7006";s:6:"weight";s:2:"88";s:4:"info";a:14:{s:4:"name";s:5:"Devel";s:11:"description";s:52:"Various blocks, pages, and functions for developers.";s:7:"package";s:11:"Development";s:4:"core";s:3:"7.x";s:9:"configure";s:30:"admin/config/development/devel";s:4:"tags";a:1:{i:0;s:9:"developer";}s:5:"files";a:2:{i:0;s:10:"devel.test";i:1;s:14:"devel.mail.inc";}s:7:"version";s:7:"7.x-1.5";s:7:"project";s:5:"devel";s:9:"datestamp";s:10:"1398963366";s:5:"mtime";i:1398963366;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}}s:10:"admin_menu";O:8:"stdClass":9:{s:8:"filename";s:46:"sites/all/modules/admin_menu/admin_menu.module";s:4:"name";s:10:"admin_menu";s:4:"type";s:6:"module";s:5:"owner";s:0:"";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:4:"7304";s:6:"weight";s:3:"100";s:4:"info";a:13:{s:4:"name";s:19:"Administration menu";s:11:"description";s:123:"Provides a dropdown menu to most administrative tasks and other common destinations (to users with the proper permissions).";s:7:"package";s:14:"Administration";s:4:"core";s:3:"7.x";s:9:"configure";s:38:"admin/config/administration/admin_menu";s:12:"dependencies";a:1:{i:0;s:14:"system (>7.10)";}s:5:"files";a:1:{i:0;s:21:"tests/admin_menu.test";}s:7:"version";s:11:"7.x-3.0-rc4";s:7:"project";s:10:"admin_menu";s:9:"datestamp";s:10:"1359651687";s:5:"mtime";i:1359651687;s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}}s:18:"admin_menu_toolbar";O:8:"stdClass":9:{s:8:"filename";s:73:"sites/all/modules/admin_menu/admin_menu_toolbar/admin_menu_toolbar.module";s:4:"name";s:18:"admin_menu_toolbar";s:4:"type";s:6:"module";s:5:"owner";s:0:"";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:4:"6300";s:6:"weight";s:3:"101";s:4:"info";a:12:{s:4:"name";s:33:"Administration menu Toolbar style";s:11:"description";s:17:"A better Toolbar.";s:7:"package";s:14:"Administration";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:10:"admin_menu";}s:7:"version";s:11:"7.x-3.0-rc4";s:7:"project";s:10:"admin_menu";s:9:"datestamp";s:10:"1359651687";s:5:"mtime";i:1359651687;s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}}s:7:"minimal";O:8:"stdClass":9:{s:8:"filename";s:32:"profiles/minimal/minimal.profile";s:4:"name";s:7:"minimal";s:4:"type";s:6:"module";s:5:"owner";s:0:"";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:1:"0";s:6:"weight";s:4:"1000";s:4:"info";a:15:{s:4:"name";s:7:"Minimal";s:11:"description";s:38:"Start with only a few modules enabled.";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:12:"dependencies";a:2:{i:0;s:5:"block";i:1;s:5:"dblog";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:7:"package";s:5:"Other";s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;s:6:"hidden";b:1;s:8:"required";b:1;s:17:"distribution_name";s:6:"Drupal";}}}s:5:"theme";a:4:{s:6:"bartik";O:8:"stdClass":10:{s:8:"filename";s:25:"themes/bartik/bartik.info";s:4:"name";s:6:"bartik";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:6:"Bartik";s:11:"description";s:48:"A flexible, recolorable theme with many regions.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:28:"themes/bartik/css/layout.css";s:13:"css/style.css";s:27:"themes/bartik/css/style.css";s:14:"css/colors.css";s:28:"themes/bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:27:"themes/bartik/css/print.css";}}s:7:"regions";a:17:{s:6:"header";s:6:"Header";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:11:"highlighted";s:11:"Highlighted";s:8:"featured";s:8:"Featured";s:7:"content";s:7:"Content";s:13:"sidebar_first";s:13:"Sidebar first";s:14:"sidebar_second";s:14:"Sidebar second";s:14:"triptych_first";s:14:"Triptych first";s:15:"triptych_middle";s:15:"Triptych middle";s:13:"triptych_last";s:13:"Triptych last";s:18:"footer_firstcolumn";s:19:"Footer first column";s:19:"footer_secondcolumn";s:20:"Footer second column";s:18:"footer_thirdcolumn";s:19:"Footer third column";s:19:"footer_fourthcolumn";s:20:"Footer fourth column";s:6:"footer";s:6:"Footer";}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"0";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:28:"themes/bartik/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";}s:7:"garland";O:8:"stdClass":10:{s:8:"filename";s:27:"themes/garland/garland.info";s:4:"name";s:7:"garland";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:7:"Garland";s:11:"description";s:111:"A multi-column theme which can be configured to modify colors and switch between fixed and fluid width layouts.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:8:"settings";a:1:{s:13:"garland_width";s:5:"fluid";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:29:"themes/garland/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";}s:5:"seven";O:8:"stdClass":10:{s:8:"filename";s:23:"themes/seven/seven.info";s:4:"name";s:5:"seven";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:5:"Seven";s:11:"description";s:65:"A simple one-column, tableless, fluid width administration theme.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:9:"reset.css";s:22:"themes/seven/reset.css";s:9:"style.css";s:22:"themes/seven/style.css";}}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"1";}s:7:"regions";a:5:{s:7:"content";s:7:"Content";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:13:"sidebar_first";s:13:"First sidebar";}s:14:"regions_hidden";a:3:{i:0;s:13:"sidebar_first";i:1;s:8:"page_top";i:2;s:11:"page_bottom";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/seven/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";}s:5:"stark";O:8:"stdClass":10:{s:8:"filename";s:23:"themes/stark/stark.info";s:4:"name";s:5:"stark";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:17:{s:4:"name";s:5:"Stark";s:11:"description";s:208:"This theme demonstrates Drupal's default HTML markup and CSS styles. To learn how to build your own theme and override Drupal's default code, see the <a href="http://drupal.org/theme-guide">Theming Guide</a>.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"layout.css";s:23:"themes/stark/layout.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/stark/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";}}s:9:"filepaths";a:20:{i:0;a:3:{s:4:"type";s:6:"module";s:4:"name";s:5:"block";s:8:"filepath";s:26:"modules/block/block.module";}i:1;a:3:{s:4:"type";s:6:"module";s:4:"name";s:11:"admin_devel";s:8:"filepath";s:59:"sites/all/modules/admin_menu/admin_devel/admin_devel.module";}i:2;a:3:{s:4:"type";s:5:"theme";s:4:"name";s:6:"bartik";s:8:"filepath";s:25:"themes/bartik/bartik.info";}i:3;a:3:{s:4:"type";s:6:"module";s:4:"name";s:10:"contextual";s:8:"filepath";s:36:"modules/contextual/contextual.module";}i:4;a:3:{s:4:"type";s:6:"module";s:4:"name";s:5:"dblog";s:8:"filepath";s:26:"modules/dblog/dblog.module";}i:5;a:3:{s:4:"type";s:6:"module";s:4:"name";s:14:"devel_generate";s:8:"filepath";s:60:"sites/all/modules/devel/devel_generate/devel_generate.module";}i:6;a:3:{s:4:"type";s:6:"module";s:4:"name";s:5:"field";s:8:"filepath";s:26:"modules/field/field.module";}i:7;a:3:{s:4:"type";s:6:"module";s:4:"name";s:17:"field_sql_storage";s:8:"filepath";s:64:"modules/field/modules/field_sql_storage/field_sql_storage.module";}i:8;a:3:{s:4:"type";s:6:"module";s:4:"name";s:6:"filter";s:8:"filepath";s:28:"modules/filter/filter.module";}i:9;a:3:{s:4:"type";s:6:"module";s:4:"name";s:11:"l10n_update";s:8:"filepath";s:48:"sites/all/modules/l10n_update/l10n_update.module";}i:10;a:3:{s:4:"type";s:6:"module";s:4:"name";s:6:"locale";s:8:"filepath";s:28:"modules/locale/locale.module";}i:11;a:3:{s:4:"type";s:6:"module";s:4:"name";s:13:"module_filter";s:8:"filepath";s:52:"sites/all/modules/module_filter/module_filter.module";}i:12;a:3:{s:4:"type";s:6:"module";s:4:"name";s:4:"node";s:8:"filepath";s:24:"modules/node/node.module";}i:13;a:3:{s:4:"type";s:6:"module";s:4:"name";s:6:"system";s:8:"filepath";s:28:"modules/system/system.module";}i:14;a:3:{s:4:"type";s:6:"module";s:4:"name";s:4:"text";s:8:"filepath";s:38:"modules/field/modules/text/text.module";}i:15;a:3:{s:4:"type";s:6:"module";s:4:"name";s:4:"user";s:8:"filepath";s:24:"modules/user/user.module";}i:16;a:3:{s:4:"type";s:6:"module";s:4:"name";s:5:"devel";s:8:"filepath";s:36:"sites/all/modules/devel/devel.module";}i:17;a:3:{s:4:"type";s:6:"module";s:4:"name";s:10:"admin_menu";s:8:"filepath";s:46:"sites/all/modules/admin_menu/admin_menu.module";}i:18;a:3:{s:4:"type";s:6:"module";s:4:"name";s:18:"admin_menu_toolbar";s:8:"filepath";s:73:"sites/all/modules/admin_menu/admin_menu_toolbar/admin_menu_toolbar.module";}i:19;a:3:{s:4:"type";s:6:"module";s:4:"name";s:7:"minimal";s:8:"filepath";s:32:"profiles/minimal/minimal.profile";}}}	0	1418195182	1
\.


--
-- Data for Name: cache_field; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY cache_field (cid, data, expire, created, serialized) FROM stdin;
field_info:bundle:user:user	a:2:{s:9:"instances";a:0:{}s:6:"fields";a:0:{}}	0	1418195166	1
field:user:1	a:0:{}	0	1418195166	1
\.


--
-- Data for Name: cache_filter; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY cache_filter (cid, data, expire, created, serialized) FROM stdin;
\.


--
-- Data for Name: cache_form; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY cache_form (cid, data, expire, created, serialized) FROM stdin;
\.


--
-- Data for Name: cache_l10n_update; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY cache_l10n_update (cid, data, expire, created, serialized) FROM stdin;
l10n_update_server:http://localize.drupal.org/l10n_server.xml	a:7:{s:4:"name";s:12:"Translations";s:10:"server_url";s:42:"http://localize.drupal.org/l10n_server.xml";s:10:"update_url";s:86:"http://ftp.drupal.org/files/translations/%core/%project/%project-%release.%language.po";s:7:"version";s:3:"1.1";s:4:"link";s:27:"http://localize.drupal.org/";s:11:"l10n_remote";s:27:"http://localize.drupal.org/";s:9:"languages";a:110:{s:3:"prs";a:3:{s:4:"name";s:19:"Afghanistan Persian";s:6:"native";s:6:"\\330\\257\\330\\261\\333\\214";s:4:"code";s:3:"prs";}s:2:"af";a:3:{s:4:"name";s:9:"Afrikaans";s:6:"native";s:9:"Afrikaans";s:4:"code";s:2:"af";}s:2:"sq";a:3:{s:4:"name";s:8:"Albanian";s:6:"native";s:5:"Shqip";s:4:"code";s:2:"sq";}s:2:"am";a:3:{s:4:"name";s:7:"Amharic";s:6:"native";s:12:"\\341\\212\\240\\341\\210\\233\\341\\210\\255\\341\\212\\233";s:4:"code";s:2:"am";}s:2:"ar";a:3:{s:4:"name";s:6:"Arabic";s:6:"native";s:14:"\\330\\247\\331\\204\\330\\271\\330\\261\\330\\250\\331\\212\\330\\251";s:4:"code";s:2:"ar";}s:2:"hy";a:3:{s:4:"name";s:8:"Armenian";s:6:"native";s:14:"\\325\\200\\325\\241\\325\\265\\325\\245\\326\\200\\325\\245\\325\\266";s:4:"code";s:2:"hy";}s:2:"as";a:3:{s:4:"name";s:8:"Assamese";s:6:"native";s:8:"Assamese";s:4:"code";s:2:"as";}s:3:"ast";a:3:{s:4:"name";s:8:"Asturian";s:6:"native";s:9:"Asturianu";s:4:"code";s:3:"ast";}s:2:"az";a:3:{s:4:"name";s:11:"Azerbaijani";s:6:"native";s:11:"az\\311\\231rbaycan";s:4:"code";s:2:"az";}s:2:"ms";a:3:{s:4:"name";s:15:"Bahasa Malaysia";s:6:"native";s:19:"\\330\\250\\331\\207\\330\\247\\330\\263 \\331\\205\\331\\204\\330\\247\\331\\212\\331\\210";s:4:"code";s:2:"ms";}s:2:"eu";a:3:{s:4:"name";s:6:"Basque";s:6:"native";s:7:"Euskera";s:4:"code";s:2:"eu";}s:2:"be";a:3:{s:4:"name";s:10:"Belarusian";s:6:"native";s:20:"\\320\\221\\320\\265\\320\\273\\320\\260\\321\\200\\321\\203\\321\\201\\320\\272\\320\\260\\321\\217";s:4:"code";s:2:"be";}s:2:"bn";a:3:{s:4:"name";s:7:"Bengali";s:6:"native";s:7:"Bengali";s:4:"code";s:2:"bn";}s:2:"bs";a:3:{s:4:"name";s:7:"Bosnian";s:6:"native";s:8:"Bosanski";s:4:"code";s:2:"bs";}s:2:"br";a:3:{s:4:"name";s:6:"Breton";s:6:"native";s:6:"Breton";s:4:"code";s:2:"br";}s:2:"bg";a:3:{s:4:"name";s:9:"Bulgarian";s:6:"native";s:18:"\\320\\221\\321\\212\\320\\273\\320\\263\\320\\260\\321\\200\\321\\201\\320\\272\\320\\270";s:4:"code";s:2:"bg";}s:2:"my";a:3:{s:4:"name";s:7:"Burmese";s:6:"native";s:7:"Burmese";s:4:"code";s:2:"my";}s:2:"ca";a:3:{s:4:"name";s:7:"Catalan";s:6:"native";s:7:"Catal\\303\\240";s:4:"code";s:2:"ca";}s:7:"zh-hans";a:3:{s:4:"name";s:19:"Chinese, Simplified";s:6:"native";s:12:"\\347\\256\\200\\344\\275\\223\\344\\270\\255\\346\\226\\207";s:4:"code";s:7:"zh-hans";}s:7:"zh-hant";a:3:{s:4:"name";s:20:"Chinese, Traditional";s:6:"native";s:12:"\\347\\271\\201\\351\\253\\224\\344\\270\\255\\346\\226\\207";s:4:"code";s:7:"zh-hant";}s:2:"hr";a:3:{s:4:"name";s:8:"Croatian";s:6:"native";s:8:"Hrvatski";s:4:"code";s:2:"hr";}s:2:"cs";a:3:{s:4:"name";s:5:"Czech";s:6:"native";s:9:"\\304\\214e\\305\\241tina";s:4:"code";s:2:"cs";}s:2:"da";a:3:{s:4:"name";s:6:"Danish";s:6:"native";s:5:"Dansk";s:4:"code";s:2:"da";}s:2:"nl";a:3:{s:4:"name";s:5:"Dutch";s:6:"native";s:10:"Nederlands";s:4:"code";s:2:"nl";}s:2:"dz";a:3:{s:4:"name";s:8:"Dzongkha";s:6:"native";s:21:"\\340\\275\\242\\340\\276\\253\\340\\275\\274\\340\\275\\204\\340\\274\\213\\340\\275\\201\\340\\274\\213";s:4:"code";s:2:"dz";}s:2:"en";a:3:{s:4:"name";s:7:"English";s:6:"native";s:7:"English";s:4:"code";s:2:"en";}s:5:"en-gb";a:3:{s:4:"name";s:16:"English, British";s:6:"native";s:16:"English, British";s:4:"code";s:5:"en-gb";}s:2:"eo";a:3:{s:4:"name";s:9:"Esperanto";s:6:"native";s:9:"Esperanto";s:4:"code";s:2:"eo";}s:2:"et";a:3:{s:4:"name";s:8:"Estonian";s:6:"native";s:5:"Eesti";s:4:"code";s:2:"et";}s:2:"fo";a:3:{s:4:"name";s:8:"Faeroese";s:6:"native";s:9:"f\\303\\270royskt";s:4:"code";s:2:"fo";}s:3:"fil";a:3:{s:4:"name";s:8:"Filipino";s:6:"native";s:8:"Filipino";s:4:"code";s:3:"fil";}s:2:"fi";a:3:{s:4:"name";s:7:"Finnish";s:6:"native";s:5:"Suomi";s:4:"code";s:2:"fi";}s:2:"fr";a:3:{s:4:"name";s:6:"French";s:6:"native";s:9:"Fran\\303\\247ais";s:4:"code";s:2:"fr";}s:2:"fy";a:3:{s:4:"name";s:16:"Frisian, Western";s:6:"native";s:5:"Frysk";s:4:"code";s:2:"fy";}s:2:"gl";a:3:{s:4:"name";s:8:"Galician";s:6:"native";s:6:"Galego";s:4:"code";s:2:"gl";}s:2:"ka";a:3:{s:4:"name";s:8:"Georgian";s:6:"native";s:8:"Georgian";s:4:"code";s:2:"ka";}s:2:"de";a:3:{s:4:"name";s:6:"German";s:6:"native";s:7:"Deutsch";s:4:"code";s:2:"de";}s:2:"el";a:3:{s:4:"name";s:5:"Greek";s:6:"native";s:16:"\\316\\225\\316\\273\\316\\273\\316\\267\\316\\275\\316\\271\\316\\272\\316\\254";s:4:"code";s:2:"el";}s:2:"gu";a:3:{s:4:"name";s:8:"Gujarati";s:6:"native";s:8:"Gujarati";s:4:"code";s:2:"gu";}s:2:"ht";a:3:{s:4:"name";s:14:"Haitian Creole";s:6:"native";s:14:"Haitian Creole";s:4:"code";s:2:"ht";}s:2:"he";a:3:{s:4:"name";s:6:"Hebrew";s:6:"native";s:10:"\\327\\242\\327\\221\\327\\250\\327\\231\\327\\252";s:4:"code";s:2:"he";}s:2:"hi";a:3:{s:4:"name";s:5:"Hindi";s:6:"native";s:18:"\\340\\244\\271\\340\\244\\277\\340\\244\\250\\340\\245\\215\\340\\244\\246\\340\\245\\200";s:4:"code";s:2:"hi";}s:2:"hu";a:3:{s:4:"name";s:9:"Hungarian";s:6:"native";s:6:"Magyar";s:4:"code";s:2:"hu";}s:2:"is";a:3:{s:4:"name";s:9:"Icelandic";s:6:"native";s:9:"\\303\\215slenska";s:4:"code";s:2:"is";}s:2:"id";a:3:{s:4:"name";s:10:"Indonesian";s:6:"native";s:16:"Bahasa Indonesia";s:4:"code";s:2:"id";}s:2:"ga";a:3:{s:4:"name";s:5:"Irish";s:6:"native";s:7:"Gaeilge";s:4:"code";s:2:"ga";}s:2:"it";a:3:{s:4:"name";s:7:"Italian";s:6:"native";s:8:"Italiano";s:4:"code";s:2:"it";}s:2:"ja";a:3:{s:4:"name";s:8:"Japanese";s:6:"native";s:9:"\\346\\227\\245\\346\\234\\254\\350\\252\\236";s:4:"code";s:2:"ja";}s:2:"jv";a:3:{s:4:"name";s:8:"Javanese";s:6:"native";s:8:"Javanese";s:4:"code";s:2:"jv";}s:2:"kn";a:3:{s:4:"name";s:7:"Kannada";s:6:"native";s:15:"\\340\\262\\225\\340\\262\\250\\340\\263\\215\\340\\262\\250\\340\\262\\241";s:4:"code";s:2:"kn";}s:2:"kk";a:3:{s:4:"name";s:6:"Kazakh";s:6:"native";s:10:"\\322\\232\\320\\260\\320\\267\\320\\260\\322\\233";s:4:"code";s:2:"kk";}s:2:"km";a:3:{s:4:"name";s:5:"Khmer";s:6:"native";s:27:"\\341\\236\\227\\341\\236\\266\\341\\236\\237\\341\\236\\266\\341\\236\\201\\341\\237\\222\\341\\236\\230\\341\\237\\202\\341\\236\\232";s:4:"code";s:2:"km";}s:2:"rw";a:3:{s:4:"name";s:11:"Kinyarwanda";s:6:"native";s:11:"Kinyarwanda";s:4:"code";s:2:"rw";}s:2:"ko";a:3:{s:4:"name";s:6:"Korean";s:6:"native";s:9:"\\355\\225\\234\\352\\265\\255\\354\\226\\264";s:4:"code";s:2:"ko";}s:2:"ku";a:3:{s:4:"name";s:7:"Kurdish";s:6:"native";s:6:"Kurd\\303\\256";s:4:"code";s:2:"ku";}s:2:"ky";a:3:{s:4:"name";s:6:"Kyrgyz";s:6:"native";s:12:"\\320\\232\\321\\213\\321\\200\\320\\263\\321\\213\\320\\267";s:4:"code";s:2:"ky";}s:2:"lo";a:3:{s:4:"name";s:3:"Lao";s:6:"native";s:21:"\\340\\272\\236\\340\\272\\262\\340\\272\\252\\340\\272\\262\\340\\272\\245\\340\\272\\262\\340\\272\\247";s:4:"code";s:2:"lo";}s:2:"lv";a:3:{s:4:"name";s:7:"Latvian";s:6:"native";s:9:"Latvie\\305\\241u";s:4:"code";s:2:"lv";}s:2:"lt";a:3:{s:4:"name";s:10:"Lithuanian";s:6:"native";s:9:"Lietuvi\\305\\263";s:4:"code";s:2:"lt";}s:11:"xx-lolspeak";a:3:{s:4:"name";s:8:"Lolspeak";s:6:"native";s:8:"Lolspeak";s:4:"code";s:11:"xx-lolspeak";}s:2:"lb";a:3:{s:4:"name";s:13:"Luxembourgish";s:6:"native";s:13:"Luxembourgish";s:4:"code";s:2:"lb";}s:2:"mk";a:3:{s:4:"name";s:10:"Macedonian";s:6:"native";s:20:"\\320\\234\\320\\260\\320\\272\\320\\265\\320\\264\\320\\276\\320\\275\\321\\201\\320\\272\\320\\270";s:4:"code";s:2:"mk";}s:2:"mg";a:3:{s:4:"name";s:8:"Malagasy";s:6:"native";s:8:"Malagasy";s:4:"code";s:2:"mg";}s:2:"ml";a:3:{s:4:"name";s:9:"Malayalam";s:6:"native";s:18:"\\340\\264\\256\\340\\264\\262\\340\\264\\257\\340\\264\\276\\340\\264\\263\\340\\264\\202";s:4:"code";s:2:"ml";}s:2:"mt";a:3:{s:4:"name";s:7:"Maltese";s:6:"native";s:5:"Malti";s:4:"code";s:2:"mt";}s:2:"mi";a:3:{s:4:"name";s:5:"Maori";s:6:"native";s:6:"M\\304\\201ori";s:4:"code";s:2:"mi";}s:2:"mr";a:3:{s:4:"name";s:7:"Marathi";s:6:"native";s:7:"Marathi";s:4:"code";s:2:"mr";}s:3:"mfe";a:3:{s:4:"name";s:16:"Mauritian Creole";s:6:"native";s:14:"Kreol Morisyen";s:4:"code";s:3:"mfe";}s:2:"mn";a:3:{s:4:"name";s:9:"Mongolian";s:6:"native";s:9:"Mongolian";s:4:"code";s:2:"mn";}s:2:"ne";a:3:{s:4:"name";s:6:"Nepali";s:6:"native";s:6:"Nepali";s:4:"code";s:2:"ne";}s:2:"se";a:3:{s:4:"name";s:13:"Northern Sami";s:6:"native";s:13:"Northern Sami";s:4:"code";s:2:"se";}s:2:"nb";a:3:{s:4:"name";s:17:"Norwegian Bokm\\303\\245l";s:6:"native";s:7:"Bokm\\303\\245l";s:4:"code";s:2:"nb";}s:2:"nn";a:3:{s:4:"name";s:17:"Norwegian Nynorsk";s:6:"native";s:7:"Nynorsk";s:4:"code";s:2:"nn";}s:2:"oc";a:3:{s:4:"name";s:7:"Occitan";s:6:"native";s:7:"Occitan";s:4:"code";s:2:"oc";}s:2:"or";a:3:{s:4:"name";s:5:"Oriya";s:6:"native";s:5:"Oriya";s:4:"code";s:2:"or";}s:2:"os";a:3:{s:4:"name";s:8:"Ossetian";s:6:"native";s:8:"Ossetian";s:4:"code";s:2:"os";}s:2:"ps";a:3:{s:4:"name";s:6:"Pashto";s:6:"native";s:8:"\\331\\276\\332\\232\\330\\252\\331\\210";s:4:"code";s:2:"ps";}s:2:"fa";a:3:{s:4:"name";s:14:"Persian, Farsi";s:6:"native";s:10:"\\331\\201\\330\\247\\330\\261\\330\\263\\333\\214";s:4:"code";s:2:"fa";}s:2:"pl";a:3:{s:4:"name";s:6:"Polish";s:6:"native";s:6:"Polski";s:4:"code";s:2:"pl";}s:5:"pt-br";a:3:{s:4:"name";s:18:"Portuguese, Brazil";s:6:"native";s:10:"Portugu\\303\\252s";s:4:"code";s:5:"pt-br";}s:2:"pt";a:3:{s:4:"name";s:25:"Portuguese, International";s:6:"native";s:25:"Portuguese, International";s:4:"code";s:2:"pt";}s:5:"pt-pt";a:3:{s:4:"name";s:20:"Portuguese, Portugal";s:6:"native";s:10:"Portugu\\303\\252s";s:4:"code";s:5:"pt-pt";}s:2:"pa";a:3:{s:4:"name";s:7:"Punjabi";s:6:"native";s:7:"Punjabi";s:4:"code";s:2:"pa";}s:2:"ro";a:3:{s:4:"name";s:8:"Romanian";s:6:"native";s:8:"Rom\\303\\242n\\304\\203";s:4:"code";s:2:"ro";}s:2:"ru";a:3:{s:4:"name";s:7:"Russian";s:6:"native";s:14:"\\320\\240\\321\\203\\321\\201\\321\\201\\320\\272\\320\\270\\320\\271";s:4:"code";s:2:"ru";}s:3:"sco";a:3:{s:4:"name";s:5:"Scots";s:6:"native";s:5:"Scots";s:4:"code";s:3:"sco";}s:2:"gd";a:3:{s:4:"name";s:12:"Scots Gaelic";s:6:"native";s:12:"Scots Gaelic";s:4:"code";s:2:"gd";}s:2:"sr";a:3:{s:4:"name";s:7:"Serbian";s:6:"native";s:12:"\\320\\241\\321\\200\\320\\277\\321\\201\\320\\272\\320\\270";s:4:"code";s:2:"sr";}s:2:"sd";a:3:{s:4:"name";s:6:"Sindhi";s:6:"native";s:6:"Sindhi";s:4:"code";s:2:"sd";}s:2:"si";a:3:{s:4:"name";s:7:"Sinhala";s:6:"native";s:15:"\\340\\267\\203\\340\\267\\222\\340\\266\\202\\340\\267\\204\\340\\266\\275";s:4:"code";s:2:"si";}s:2:"sk";a:3:{s:4:"name";s:6:"Slovak";s:6:"native";s:11:"Sloven\\304\\215ina";s:4:"code";s:2:"sk";}s:2:"sl";a:3:{s:4:"name";s:9:"Slovenian";s:6:"native";s:13:"Sloven\\305\\241\\304\\215ina";s:4:"code";s:2:"sl";}s:2:"es";a:3:{s:4:"name";s:7:"Spanish";s:6:"native";s:8:"Espa\\303\\261ol";s:4:"code";s:2:"es";}s:2:"sw";a:3:{s:4:"name";s:7:"Swahili";s:6:"native";s:9:"Kiswahili";s:4:"code";s:2:"sw";}s:2:"sv";a:3:{s:4:"name";s:7:"Swedish";s:6:"native";s:7:"Svenska";s:4:"code";s:2:"sv";}s:9:"gsw-berne";a:3:{s:4:"name";s:12:"Swiss German";s:6:"native";s:15:"Schwyzerd\\303\\274tsch";s:4:"code";s:9:"gsw-berne";}s:2:"ta";a:3:{s:4:"name";s:5:"Tamil";s:6:"native";s:15:"\\340\\256\\244\\340\\256\\256\\340\\256\\277\\340\\256\\264\\340\\257\\215";s:4:"code";s:2:"ta";}s:5:"ta-lk";a:3:{s:4:"name";s:16:"Tamil, Sri Lanka";s:6:"native";s:16:"Tamil, Sri Lanka";s:4:"code";s:5:"ta-lk";}s:2:"te";a:3:{s:4:"name";s:6:"Telugu";s:6:"native";s:18:"\\340\\260\\244\\340\\261\\206\\340\\260\\262\\340\\261\\201\\340\\260\\227\\340\\261\\201";s:4:"code";s:2:"te";}s:4:"test";a:3:{s:4:"name";s:4:"Test";s:6:"native";s:4:"Test";s:4:"code";s:4:"test";}s:2:"th";a:3:{s:4:"name";s:4:"Thai";s:6:"native";s:21:"\\340\\270\\240\\340\\270\\262\\340\\270\\251\\340\\270\\262\\340\\271\\204\\340\\270\\227\\340\\270\\242";s:4:"code";s:2:"th";}s:2:"bo";a:3:{s:4:"name";s:7:"Tibetan";s:6:"native";s:7:"Tibetan";s:4:"code";s:2:"bo";}s:2:"ti";a:3:{s:4:"name";s:8:"Tigrinya";s:6:"native";s:8:"Tigrinya";s:4:"code";s:2:"ti";}s:2:"tr";a:3:{s:4:"name";s:7:"Turkish";s:6:"native";s:8:"T\\303\\274rk\\303\\247e";s:4:"code";s:2:"tr";}s:3:"tyv";a:3:{s:4:"name";s:5:"Tuvan";s:6:"native";s:15:"\\320\\242\\321\\213\\320\\262\\320\\260 \\320\\264\\321\\213\\320\\273";s:4:"code";s:3:"tyv";}s:2:"ug";a:3:{s:4:"name";s:6:"Uighur";s:6:"native";s:6:"Uighur";s:4:"code";s:2:"ug";}s:2:"uk";a:3:{s:4:"name";s:9:"Ukrainian";s:6:"native";s:20:"\\320\\243\\320\\272\\321\\200\\320\\260\\321\\227\\320\\275\\321\\201\\321\\214\\320\\272\\320\\260";s:4:"code";s:2:"uk";}s:2:"ur";a:3:{s:4:"name";s:4:"Urdu";s:6:"native";s:8:"\\330\\247\\330\\261\\330\\257\\331\\210";s:4:"code";s:2:"ur";}s:2:"vi";a:3:{s:4:"name";s:10:"Vietnamese";s:6:"native";s:14:"Ti\\341\\272\\277ng Vi\\341\\273\\207t";s:4:"code";s:2:"vi";}s:2:"cy";a:3:{s:4:"name";s:5:"Welsh";s:6:"native";s:7:"Cymraeg";s:4:"code";s:2:"cy";}}}	0	1418195128	1
\.


--
-- Data for Name: cache_menu; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY cache_menu (cid, data, expire, created, serialized) FROM stdin;
local_tasks:admin/modules	a:3:{i:0;a:23:{s:4:"path";s:13:"admin/modules";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer modules";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:32:"a:1:{i:0;s:14:"system_modules";}";s:17:"delivery_callback";s:0:"";s:3:"fit";s:1:"3";s:12:"number_parts";s:1:"2";s:7:"context";s:1:"0";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:13:"admin/modules";s:5:"title";s:7:"Modules";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:26:"Extend site functionality.";s:8:"position";s:0:"";s:6:"weight";s:2:"-2";s:12:"include_file";s:31:"modules/system/system.admin.inc";}i:1;a:23:{s:4:"path";s:18:"admin/modules/list";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer modules";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:32:"a:1:{i:0;s:14:"system_modules";}";s:17:"delivery_callback";s:0:"";s:3:"fit";s:1:"7";s:12:"number_parts";s:1:"3";s:7:"context";s:1:"1";s:10:"tab_parent";s:13:"admin/modules";s:8:"tab_root";s:13:"admin/modules";s:5:"title";s:4:"List";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:0:"";s:8:"position";s:0:"";s:6:"weight";s:1:"0";s:12:"include_file";s:31:"modules/system/system.admin.inc";}i:2;a:23:{s:4:"path";s:23:"admin/modules/uninstall";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer modules";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:42:"a:1:{i:0;s:24:"system_modules_uninstall";}";s:17:"delivery_callback";s:0:"";s:3:"fit";s:1:"7";s:12:"number_parts";s:1:"3";s:7:"context";s:1:"1";s:10:"tab_parent";s:13:"admin/modules";s:8:"tab_root";s:13:"admin/modules";s:5:"title";s:9:"Uninstall";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:8:"position";s:0:"";s:6:"weight";s:2:"20";s:12:"include_file";s:31:"modules/system/system.admin.inc";}}	0	1418195166	1
links:navigation:page:admin/modules:en:1:0	a:4:{s:9:"min_depth";i:1;s:9:"max_depth";N;s:8:"expanded";a:1:{i:0;i:0;}s:12:"active_trail";a:1:{i:0;i:0;}}	0	1418195166	1
links:user-menu:page:admin/structure/block/manage/system/management/configure:en:1:1	a:4:{s:9:"min_depth";i:1;s:9:"max_depth";i:1;s:8:"expanded";a:1:{i:0;i:0;}s:12:"active_trail";a:1:{i:0;i:0;}}	0	1418195170	1
links:management:page:admin/modules:en:1:0:trail	a:5:{s:9:"min_depth";i:1;s:9:"max_depth";N;s:17:"only_active_trail";b:1;s:8:"expanded";a:3:{i:0;i:0;i:1;s:1:"1";i:13;s:2:"13";}s:12:"active_trail";a:3:{i:0;i:0;i:1;s:1:"1";i:13;s:2:"13";}}	0	1418195175	1
links:management:tree-data:en:9350325982e5992f490e7fe347d36f8c809ec27c752146edec37f3c7dbc10bf8	a:2:{s:4:"tree";a:1:{i:1;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:1:"1";s:4:"plid";s:1:"0";s:9:"link_path";s:5:"admin";s:11:"router_path";s:5:"admin";s:10:"link_title";s:14:"Administration";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"9";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:5:"admin";s:5:"title";s:14:"Administration";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:1;}s:5:"below";a:9:{i:6;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:1:"6";s:4:"plid";s:1:"1";s:9:"link_path";s:16:"admin/appearance";s:11:"router_path";s:16:"admin/appearance";s:10:"link_title";s:10:"Appearance";s:7:"options";s:83:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:33:"Select and configure your themes.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-6";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"6";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer themes";}";s:13:"page_callback";s:18:"system_themes_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:16:"admin/appearance";s:5:"title";s:10:"Appearance";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:33:"Select and configure your themes.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:7;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:1:"7";s:4:"plid";s:1:"1";s:9:"link_path";s:12:"admin/config";s:11:"router_path";s:12:"admin/config";s:10:"link_title";s:13:"Configuration";s:7:"options";s:70:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:20:"Administer settings.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:24:"system_admin_config_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:12:"admin/config";s:5:"title";s:13:"Configuration";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:20:"Administer settings.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:8;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:1:"8";s:4:"plid";s:1:"1";s:9:"link_path";s:13:"admin/content";s:11:"router_path";s:13:"admin/content";s:10:"link_title";s:7:"Content";s:7:"options";s:74:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:24:"Find and manage content.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-10";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"8";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:41:"a:1:{i:0;s:23:"access content overview";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:36:"a:1:{i:0;s:18:"node_admin_content";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:13:"admin/content";s:5:"title";s:7:"Content";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:24:"Find and manage content.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:10;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"10";s:4:"plid";s:1:"1";s:9:"link_path";s:11:"admin/index";s:11:"router_path";s:11:"admin/index";s:10:"link_title";s:5:"Index";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-18";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"10";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:18:"system_admin_index";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:5:"admin";s:8:"tab_root";s:5:"admin";s:5:"title";s:5:"Index";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:13;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"13";s:4:"plid";s:1:"1";s:9:"link_path";s:13:"admin/modules";s:11:"router_path";s:13:"admin/modules";s:10:"link_title";s:7:"Modules";s:7:"options";s:76:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:26:"Extend site functionality.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-2";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"13";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer modules";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:32:"a:1:{i:0;s:14:"system_modules";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:13:"admin/modules";s:5:"title";s:7:"Modules";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:26:"Extend site functionality.";s:15:"in_active_trail";b:1;}s:5:"below";a:2:{i:30;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"30";s:4:"plid";s:2:"13";s:9:"link_path";s:18:"admin/modules/list";s:11:"router_path";s:18:"admin/modules/list";s:10:"link_title";s:4:"List";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"13";s:2:"p3";s:2:"30";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer modules";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:32:"a:1:{i:0;s:14:"system_modules";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:13:"admin/modules";s:8:"tab_root";s:13:"admin/modules";s:5:"title";s:4:"List";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:45;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"45";s:4:"plid";s:2:"13";s:9:"link_path";s:23:"admin/modules/uninstall";s:11:"router_path";s:23:"admin/modules/uninstall";s:10:"link_title";s:9:"Uninstall";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"20";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"13";s:2:"p3";s:2:"45";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer modules";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:42:"a:1:{i:0;s:24:"system_modules_uninstall";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:13:"admin/modules";s:8:"tab_root";s:13:"admin/modules";s:5:"title";s:9:"Uninstall";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}i:15;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"15";s:4:"plid";s:1:"1";s:9:"link_path";s:12:"admin/people";s:11:"router_path";s:12:"admin/people";s:10:"link_title";s:6:"People";s:7:"options";s:95:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:45:"Manage user accounts, roles, and permissions.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-4";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"15";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:34:"a:1:{i:0;s:16:"administer users";}";s:13:"page_callback";s:10:"user_admin";s:14:"page_arguments";s:21:"a:1:{i:0;s:4:"list";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:12:"admin/people";s:5:"title";s:6:"People";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:45:"Manage user accounts, roles, and permissions.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:16;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"16";s:4:"plid";s:1:"1";s:9:"link_path";s:13:"admin/reports";s:11:"router_path";s:13:"admin/reports";s:10:"link_title";s:7:"Reports";s:7:"options";s:84:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:34:"View reports, updates, and errors.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"5";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"16";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:37:"a:1:{i:0;s:19:"access site reports";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:13:"admin/reports";s:5:"title";s:7:"Reports";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:34:"View reports, updates, and errors.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:18;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"18";s:4:"plid";s:1:"1";s:9:"link_path";s:15:"admin/structure";s:11:"router_path";s:15:"admin/structure";s:10:"link_title";s:9:"Structure";s:7:"options";s:95:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:45:"Administer blocks, content types, menus, etc.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-8";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:15:"admin/structure";s:5:"title";s:9:"Structure";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:45:"Administer blocks, content types, menus, etc.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:19;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"19";s:4:"plid";s:1:"1";s:9:"link_path";s:11:"admin/tasks";s:11:"router_path";s:11:"admin/tasks";s:10:"link_title";s:5:"Tasks";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-20";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"19";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:5:"admin";s:8:"tab_root";s:5:"admin";s:5:"title";s:5:"Tasks";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}}s:10:"node_links";a:0:{}}	0	1418195175	1
links:navigation:page:admin/structure/block/manage/system/navigation/configure:en:1:0	a:4:{s:9:"min_depth";i:1;s:9:"max_depth";N;s:8:"expanded";a:1:{i:0;i:0;}s:12:"active_trail";a:1:{i:0;i:0;}}	0	1418195178	1
links:main-menu:page:admin/structure/block/manage/system/navigation/configure:en:1:1	a:4:{s:9:"min_depth";i:1;s:9:"max_depth";i:1;s:8:"expanded";a:1:{i:0;i:0;}s:12:"active_trail";a:1:{i:0;i:0;}}	0	1418195178	1
links:user-menu:page:admin/structure/block/manage/system/navigation/configure:en:1:1	a:4:{s:9:"min_depth";i:1;s:9:"max_depth";i:1;s:8:"expanded";a:1:{i:0;i:0;}s:12:"active_trail";a:1:{i:0;i:0;}}	0	1418195178	1
links:management:page:admin/structure/block/manage/system/navigation/configure:en:1:0:trail	a:5:{s:9:"min_depth";i:1;s:9:"max_depth";N;s:17:"only_active_trail";b:1;s:8:"expanded";a:6:{i:0;i:0;i:1;s:1:"1";i:18;s:2:"18";i:21;s:2:"21";i:101;s:3:"101";i:110;s:3:"110";}s:12:"active_trail";a:6:{i:0;i:0;i:1;s:1:"1";i:18;s:2:"18";i:21;s:2:"21";i:101;s:3:"101";i:110;s:3:"110";}}	0	1418195178	1
links:management:tree-data:en:8cc6abaa755b70237f8ab3da9d35c8edc28870b928ef7489c4d369041ca92d65	a:2:{s:4:"tree";a:1:{i:1;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:1:"1";s:4:"plid";s:1:"0";s:9:"link_path";s:5:"admin";s:11:"router_path";s:5:"admin";s:10:"link_title";s:14:"Administration";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"9";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:5:"admin";s:5:"title";s:14:"Administration";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:1;}s:5:"below";a:9:{i:6;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:1:"6";s:4:"plid";s:1:"1";s:9:"link_path";s:16:"admin/appearance";s:11:"router_path";s:16:"admin/appearance";s:10:"link_title";s:10:"Appearance";s:7:"options";s:83:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:33:"Select and configure your themes.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-6";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"6";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer themes";}";s:13:"page_callback";s:18:"system_themes_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:16:"admin/appearance";s:5:"title";s:10:"Appearance";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:33:"Select and configure your themes.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:7;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:1:"7";s:4:"plid";s:1:"1";s:9:"link_path";s:12:"admin/config";s:11:"router_path";s:12:"admin/config";s:10:"link_title";s:13:"Configuration";s:7:"options";s:70:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:20:"Administer settings.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:24:"system_admin_config_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:12:"admin/config";s:5:"title";s:13:"Configuration";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:20:"Administer settings.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:8;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:1:"8";s:4:"plid";s:1:"1";s:9:"link_path";s:13:"admin/content";s:11:"router_path";s:13:"admin/content";s:10:"link_title";s:7:"Content";s:7:"options";s:74:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:24:"Find and manage content.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-10";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"8";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:41:"a:1:{i:0;s:23:"access content overview";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:36:"a:1:{i:0;s:18:"node_admin_content";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:13:"admin/content";s:5:"title";s:7:"Content";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:24:"Find and manage content.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:10;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"10";s:4:"plid";s:1:"1";s:9:"link_path";s:11:"admin/index";s:11:"router_path";s:11:"admin/index";s:10:"link_title";s:5:"Index";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-18";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"10";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:18:"system_admin_index";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:5:"admin";s:8:"tab_root";s:5:"admin";s:5:"title";s:5:"Index";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:13;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"13";s:4:"plid";s:1:"1";s:9:"link_path";s:13:"admin/modules";s:11:"router_path";s:13:"admin/modules";s:10:"link_title";s:7:"Modules";s:7:"options";s:76:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:26:"Extend site functionality.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-2";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"13";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer modules";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:32:"a:1:{i:0;s:14:"system_modules";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:13:"admin/modules";s:5:"title";s:7:"Modules";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:26:"Extend site functionality.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:15;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"15";s:4:"plid";s:1:"1";s:9:"link_path";s:12:"admin/people";s:11:"router_path";s:12:"admin/people";s:10:"link_title";s:6:"People";s:7:"options";s:95:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:45:"Manage user accounts, roles, and permissions.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-4";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"15";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:34:"a:1:{i:0;s:16:"administer users";}";s:13:"page_callback";s:10:"user_admin";s:14:"page_arguments";s:21:"a:1:{i:0;s:4:"list";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:12:"admin/people";s:5:"title";s:6:"People";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:45:"Manage user accounts, roles, and permissions.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:16;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"16";s:4:"plid";s:1:"1";s:9:"link_path";s:13:"admin/reports";s:11:"router_path";s:13:"admin/reports";s:10:"link_title";s:7:"Reports";s:7:"options";s:84:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:34:"View reports, updates, and errors.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"5";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"16";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:37:"a:1:{i:0;s:19:"access site reports";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:13:"admin/reports";s:5:"title";s:7:"Reports";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:34:"View reports, updates, and errors.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:18;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"18";s:4:"plid";s:1:"1";s:9:"link_path";s:15:"admin/structure";s:11:"router_path";s:15:"admin/structure";s:10:"link_title";s:9:"Structure";s:7:"options";s:95:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:45:"Administer blocks, content types, menus, etc.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-8";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:15:"admin/structure";s:5:"title";s:9:"Structure";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:45:"Administer blocks, content types, menus, etc.";s:15:"in_active_trail";b:1;}s:5:"below";a:2:{i:21;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"21";s:4:"plid";s:2:"18";s:9:"link_path";s:21:"admin/structure/block";s:11:"router_path";s:21:"admin/structure/block";s:10:"link_title";s:6:"Blocks";s:7:"options";s:129:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:79:"Configure what block content appears in your site's sidebars and other regions.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer blocks";}";s:13:"page_callback";s:19:"block_admin_display";s:14:"page_arguments";s:23:"a:1:{i:0;s:6:"bartik";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:21:"admin/structure/block";s:5:"title";s:6:"Blocks";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:79:"Configure what block content appears in your site's sidebars and other regions.";s:15:"in_active_trail";b:1;}s:5:"below";a:6:{i:53;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"53";s:4:"plid";s:2:"21";s:9:"link_path";s:25:"admin/structure/block/add";s:11:"router_path";s:25:"admin/structure/block/add";s:10:"link_title";s:9:"Add block";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:2:"53";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer blocks";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:38:"a:1:{i:0;s:20:"block_add_block_form";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:21:"admin/structure/block";s:8:"tab_root";s:21:"admin/structure/block";s:5:"title";s:9:"Add block";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"388";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:82;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"82";s:4:"plid";s:2:"21";s:9:"link_path";s:33:"admin/structure/block/list/bartik";s:11:"router_path";s:33:"admin/structure/block/list/bartik";s:10:"link_title";s:6:"Bartik";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-10";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:2:"82";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:20:"_block_themes_access";s:16:"access_arguments";s:2442:"a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:25:"themes/bartik/bartik.info";s:4:"name";s:6:"bartik";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:6:"Bartik";s:11:"description";s:48:"A flexible, recolorable theme with many regions.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:28:"themes/bartik/css/layout.css";s:13:"css/style.css";s:27:"themes/bartik/css/style.css";s:14:"css/colors.css";s:28:"themes/bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:27:"themes/bartik/css/print.css";}}s:7:"regions";a:17:{s:6:"header";s:6:"Header";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:11:"highlighted";s:11:"Highlighted";s:8:"featured";s:8:"Featured";s:7:"content";s:7:"Content";s:13:"sidebar_first";s:13:"Sidebar first";s:14:"sidebar_second";s:14:"Sidebar second";s:14:"triptych_first";s:14:"Triptych first";s:15:"triptych_middle";s:15:"Triptych middle";s:13:"triptych_last";s:13:"Triptych last";s:18:"footer_firstcolumn";s:19:"Footer first column";s:19:"footer_secondcolumn";s:20:"Footer second column";s:18:"footer_thirdcolumn";s:19:"Footer third column";s:19:"footer_fourthcolumn";s:20:"Footer fourth column";s:6:"footer";s:6:"Footer";}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"0";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:28:"themes/bartik/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:28:"themes/bartik/css/layout.css";s:13:"css/style.css";s:27:"themes/bartik/css/style.css";s:14:"css/colors.css";s:28:"themes/bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:27:"themes/bartik/css/print.css";}}s:6:"engine";s:11:"phptemplate";}}";s:13:"page_callback";s:19:"block_admin_display";s:14:"page_arguments";s:23:"a:1:{i:0;s:6:"bartik";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:21:"admin/structure/block";s:8:"tab_root";s:21:"admin/structure/block";s:5:"title";s:6:"Bartik";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:86;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"86";s:4:"plid";s:2:"21";s:9:"link_path";s:34:"admin/structure/block/list/garland";s:11:"router_path";s:34:"admin/structure/block/list/garland";s:10:"link_title";s:7:"Garland";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:2:"86";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:20:"_block_themes_access";s:16:"access_arguments";s:1863:"a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:27:"themes/garland/garland.info";s:4:"name";s:7:"garland";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:7:"Garland";s:11:"description";s:111:"A multi-column theme which can be configured to modify colors and switch between fixed and fluid width layouts.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:8:"settings";a:1:{s:13:"garland_width";s:5:"fluid";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:29:"themes/garland/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:6:"engine";s:11:"phptemplate";}}";s:13:"page_callback";s:19:"block_admin_display";s:14:"page_arguments";s:24:"a:1:{i:0;s:7:"garland";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:21:"admin/structure/block";s:8:"tab_root";s:21:"admin/structure/block";s:5:"title";s:7:"Garland";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:90;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"90";s:4:"plid";s:2:"21";s:9:"link_path";s:32:"admin/structure/block/list/seven";s:11:"router_path";s:32:"admin/structure/block/list/seven";s:10:"link_title";s:5:"Seven";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:2:"90";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:20:"_block_themes_access";s:16:"access_arguments";s:1664:"a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:23:"themes/seven/seven.info";s:4:"name";s:5:"seven";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:5:"Seven";s:11:"description";s:65:"A simple one-column, tableless, fluid width administration theme.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:9:"reset.css";s:22:"themes/seven/reset.css";s:9:"style.css";s:22:"themes/seven/style.css";}}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"1";}s:7:"regions";a:5:{s:7:"content";s:7:"Content";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:13:"sidebar_first";s:13:"First sidebar";}s:14:"regions_hidden";a:3:{i:0;s:13:"sidebar_first";i:1;s:8:"page_top";i:2;s:11:"page_bottom";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/seven/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:9:"reset.css";s:22:"themes/seven/reset.css";s:9:"style.css";s:22:"themes/seven/style.css";}}s:6:"engine";s:11:"phptemplate";}}";s:13:"page_callback";s:19:"block_admin_display";s:14:"page_arguments";s:22:"a:1:{i:0;s:5:"seven";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:21:"admin/structure/block";s:8:"tab_root";s:21:"admin/structure/block";s:5:"title";s:5:"Seven";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:91;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"91";s:4:"plid";s:2:"21";s:9:"link_path";s:32:"admin/structure/block/list/stark";s:11:"router_path";s:32:"admin/structure/block/list/stark";s:10:"link_title";s:5:"Stark";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:2:"91";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:20:"_block_themes_access";s:16:"access_arguments";s:1766:"a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:23:"themes/stark/stark.info";s:4:"name";s:5:"stark";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:17:{s:4:"name";s:5:"Stark";s:11:"description";s:208:"This theme demonstrates Drupal's default HTML markup and CSS styles. To learn how to build your own theme and override Drupal's default code, see the <a href="http://drupal.org/theme-guide">Theming Guide</a>.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"layout.css";s:23:"themes/stark/layout.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/stark/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"layout.css";s:23:"themes/stark/layout.css";}}s:6:"engine";s:11:"phptemplate";}}";s:13:"page_callback";s:19:"block_admin_display";s:14:"page_arguments";s:22:"a:1:{i:0;s:5:"stark";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:21:"admin/structure/block";s:8:"tab_root";s:21:"admin/structure/block";s:5:"title";s:5:"Stark";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:101;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"101";s:4:"plid";s:2:"21";s:9:"link_path";s:32:"admin/structure/block/manage/%/%";s:11:"router_path";s:32:"admin/structure/block/manage/%/%";s:10:"link_title";s:15:"Configure block";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:3:"101";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:18:"a:2:{i:4;N;i:5;N;}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer blocks";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:55:"a:3:{i:0;s:21:"block_admin_configure";i:1;i:4;i:2;i:5;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:32:"admin/structure/block/manage/%/%";s:5:"title";s:15:"Configure block";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:1;}s:5:"below";a:2:{i:110;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"110";s:4:"plid";s:3:"101";s:9:"link_path";s:42:"admin/structure/block/manage/%/%/configure";s:11:"router_path";s:42:"admin/structure/block/manage/%/%/configure";s:10:"link_title";s:15:"Configure block";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:3:"101";s:2:"p5";s:3:"110";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:18:"a:2:{i:4;N;i:5;N;}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer blocks";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:55:"a:3:{i:0;s:21:"block_admin_configure";i:1;i:4;i:2;i:5;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:32:"admin/structure/block/manage/%/%";s:8:"tab_root";s:32:"admin/structure/block/manage/%/%";s:5:"title";s:15:"Configure block";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:0:"";s:15:"in_active_trail";b:1;}s:5:"below";a:0:{}}i:111;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"111";s:4:"plid";s:3:"101";s:9:"link_path";s:39:"admin/structure/block/manage/%/%/delete";s:11:"router_path";s:39:"admin/structure/block/manage/%/%/delete";s:10:"link_title";s:12:"Delete block";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:3:"101";s:2:"p5";s:3:"111";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:18:"a:2:{i:4;N;i:5;N;}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer blocks";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:59:"a:3:{i:0;s:25:"block_custom_block_delete";i:1;i:4;i:2;i:5;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:32:"admin/structure/block/manage/%/%";s:8:"tab_root";s:32:"admin/structure/block/manage/%/%";s:5:"title";s:12:"Delete block";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}}}i:25;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"25";s:4:"plid";s:2:"18";s:9:"link_path";s:21:"admin/structure/types";s:11:"router_path";s:21:"admin/structure/types";s:10:"link_title";s:13:"Content types";s:7:"options";s:142:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:92:"Manage content types, including default status, front page promotion, comment settings, etc.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"25";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:42:"a:1:{i:0;s:24:"administer content types";}";s:13:"page_callback";s:19:"node_overview_types";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:21:"admin/structure/types";s:5:"title";s:13:"Content types";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:92:"Manage content types, including default status, front page promotion, comment settings, etc.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}i:19;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"19";s:4:"plid";s:1:"1";s:9:"link_path";s:11:"admin/tasks";s:11:"router_path";s:11:"admin/tasks";s:10:"link_title";s:5:"Tasks";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-20";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"19";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:5:"admin";s:8:"tab_root";s:5:"admin";s:5:"title";s:5:"Tasks";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}}s:10:"node_links";a:0:{}}	0	1418195178	1
links:navigation:tree-data:en:9bd1605e2280833450478f9083b7f8714c2fa28f1012455e2744e5af1a13eec5	a:2:{s:4:"tree";a:6:{i:3;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"navigation";s:4:"mlid";s:1:"3";s:4:"plid";s:1:"0";s:9:"link_path";s:11:"filter/tips";s:11:"router_path";s:11:"filter/tips";s:10:"link_title";s:12:"Compose tips";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:1:"3";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:1:"1";s:16:"access_arguments";s:6:"a:0:{}";s:13:"page_callback";s:16:"filter_tips_long";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:11:"filter/tips";s:5:"title";s:12:"Compose tips";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:2:"20";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:4;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"navigation";s:4:"mlid";s:1:"4";s:4:"plid";s:1:"0";s:9:"link_path";s:6:"node/%";s:11:"router_path";s:6:"node/%";s:10:"link_title";s:0:"";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:1:"4";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:26:"a:1:{i:1;s:9:"node_load";}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"node_access";s:16:"access_arguments";s:29:"a:2:{i:0;s:4:"view";i:1;i:1;}";s:13:"page_callback";s:14:"node_page_view";s:14:"page_arguments";s:14:"a:1:{i:0;i:1;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:6:"node/%";s:5:"title";s:0:"";s:14:"title_callback";s:15:"node_page_title";s:15:"title_arguments";s:14:"a:1:{i:0;i:1;}";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:5;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"navigation";s:4:"mlid";s:1:"5";s:4:"plid";s:1:"0";s:9:"link_path";s:8:"node/add";s:11:"router_path";s:8:"node/add";s:10:"link_title";s:11:"Add content";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:1:"5";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:16:"_node_add_access";s:16:"access_arguments";s:6:"a:0:{}";s:13:"page_callback";s:13:"node_add_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:8:"node/add";s:5:"title";s:11:"Add content";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:14;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"navigation";s:4:"mlid";s:2:"14";s:4:"plid";s:1:"0";s:9:"link_path";s:6:"user/%";s:11:"router_path";s:6:"user/%";s:10:"link_title";s:10:"My account";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:2:"14";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:26:"a:1:{i:1;s:9:"user_load";}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:16:"user_view_access";s:16:"access_arguments";s:14:"a:1:{i:0;i:1;}";s:13:"page_callback";s:14:"user_view_page";s:14:"page_arguments";s:14:"a:1:{i:0;i:1;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:6:"user/%";s:5:"title";s:10:"My account";s:14:"title_callback";s:15:"user_page_title";s:15:"title_arguments";s:14:"a:1:{i:0;i:1;}";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:124;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"navigation";s:4:"mlid";s:3:"124";s:4:"plid";s:1:"0";s:9:"link_path";s:22:"comment/%comment/devel";s:11:"router_path";s:22:"comment/%comment/devel";s:10:"link_title";s:5:"Devel";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"100";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:3:"124";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:42:"a:1:{i:0;s:24:"access devel information";}";s:13:"page_callback";s:17:"devel_load_object";s:14:"page_arguments";s:32:"a:2:{i:0;s:7:"comment";i:1;i:1;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:22:"comment/%comment/devel";s:5:"title";s:5:"Devel";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:134;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"navigation";s:4:"mlid";s:3:"134";s:4:"plid";s:1:"0";s:9:"link_path";s:34:"taxonomy/term/%taxonomy_term/devel";s:11:"router_path";s:34:"taxonomy/term/%taxonomy_term/devel";s:10:"link_title";s:5:"Devel";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"100";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:3:"134";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:42:"a:1:{i:0;s:24:"access devel information";}";s:13:"page_callback";s:17:"devel_load_object";s:14:"page_arguments";s:54:"a:3:{i:0;s:13:"taxonomy_term";i:1;i:2;i:2;s:4:"term";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:34:"taxonomy/term/%taxonomy_term/devel";s:5:"title";s:5:"Devel";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}s:10:"node_links";a:0:{}}	0	1418195166	1
links:management:page:admin/modules:en:1:0	a:4:{s:9:"min_depth";i:1;s:9:"max_depth";N;s:8:"expanded";a:3:{i:0;i:0;i:1;s:1:"1";i:13;s:2:"13";}s:12:"active_trail";a:3:{i:0;i:0;i:1;s:1:"1";i:13;s:2:"13";}}	0	1418195166	1
links:management:tree-data:en:e2776a40668e05a00eedecfdad1a01a2a97f49974acabf30c5b71a3fc8c15ef0	a:2:{s:4:"tree";a:1:{i:1;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:1:"1";s:4:"plid";s:1:"0";s:9:"link_path";s:5:"admin";s:11:"router_path";s:5:"admin";s:10:"link_title";s:14:"Administration";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"9";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:5:"admin";s:5:"title";s:14:"Administration";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:1;}s:5:"below";a:9:{i:6;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:1:"6";s:4:"plid";s:1:"1";s:9:"link_path";s:16:"admin/appearance";s:11:"router_path";s:16:"admin/appearance";s:10:"link_title";s:10:"Appearance";s:7:"options";s:83:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:33:"Select and configure your themes.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-6";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"6";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer themes";}";s:13:"page_callback";s:18:"system_themes_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:16:"admin/appearance";s:5:"title";s:10:"Appearance";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:33:"Select and configure your themes.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:7;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:1:"7";s:4:"plid";s:1:"1";s:9:"link_path";s:12:"admin/config";s:11:"router_path";s:12:"admin/config";s:10:"link_title";s:13:"Configuration";s:7:"options";s:70:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:20:"Administer settings.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:24:"system_admin_config_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:12:"admin/config";s:5:"title";s:13:"Configuration";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:20:"Administer settings.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:8;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:1:"8";s:4:"plid";s:1:"1";s:9:"link_path";s:13:"admin/content";s:11:"router_path";s:13:"admin/content";s:10:"link_title";s:7:"Content";s:7:"options";s:74:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:24:"Find and manage content.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-10";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"8";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:41:"a:1:{i:0;s:23:"access content overview";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:36:"a:1:{i:0;s:18:"node_admin_content";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:13:"admin/content";s:5:"title";s:7:"Content";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:24:"Find and manage content.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:10;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"10";s:4:"plid";s:1:"1";s:9:"link_path";s:11:"admin/index";s:11:"router_path";s:11:"admin/index";s:10:"link_title";s:5:"Index";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-18";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"10";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:18:"system_admin_index";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:5:"admin";s:8:"tab_root";s:5:"admin";s:5:"title";s:5:"Index";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:13;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"13";s:4:"plid";s:1:"1";s:9:"link_path";s:13:"admin/modules";s:11:"router_path";s:13:"admin/modules";s:10:"link_title";s:7:"Modules";s:7:"options";s:76:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:26:"Extend site functionality.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-2";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"13";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer modules";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:32:"a:1:{i:0;s:14:"system_modules";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:13:"admin/modules";s:5:"title";s:7:"Modules";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:26:"Extend site functionality.";s:15:"in_active_trail";b:1;}s:5:"below";a:2:{i:30;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"30";s:4:"plid";s:2:"13";s:9:"link_path";s:18:"admin/modules/list";s:11:"router_path";s:18:"admin/modules/list";s:10:"link_title";s:4:"List";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"13";s:2:"p3";s:2:"30";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer modules";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:32:"a:1:{i:0;s:14:"system_modules";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:13:"admin/modules";s:8:"tab_root";s:13:"admin/modules";s:5:"title";s:4:"List";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:45;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"45";s:4:"plid";s:2:"13";s:9:"link_path";s:23:"admin/modules/uninstall";s:11:"router_path";s:23:"admin/modules/uninstall";s:10:"link_title";s:9:"Uninstall";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"20";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"13";s:2:"p3";s:2:"45";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer modules";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:42:"a:1:{i:0;s:24:"system_modules_uninstall";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:13:"admin/modules";s:8:"tab_root";s:13:"admin/modules";s:5:"title";s:9:"Uninstall";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}i:15;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"15";s:4:"plid";s:1:"1";s:9:"link_path";s:12:"admin/people";s:11:"router_path";s:12:"admin/people";s:10:"link_title";s:6:"People";s:7:"options";s:95:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:45:"Manage user accounts, roles, and permissions.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-4";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"15";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:34:"a:1:{i:0;s:16:"administer users";}";s:13:"page_callback";s:10:"user_admin";s:14:"page_arguments";s:21:"a:1:{i:0;s:4:"list";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:12:"admin/people";s:5:"title";s:6:"People";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:45:"Manage user accounts, roles, and permissions.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:16;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"16";s:4:"plid";s:1:"1";s:9:"link_path";s:13:"admin/reports";s:11:"router_path";s:13:"admin/reports";s:10:"link_title";s:7:"Reports";s:7:"options";s:84:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:34:"View reports, updates, and errors.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"5";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"16";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:37:"a:1:{i:0;s:19:"access site reports";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:13:"admin/reports";s:5:"title";s:7:"Reports";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:34:"View reports, updates, and errors.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:18;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"18";s:4:"plid";s:1:"1";s:9:"link_path";s:15:"admin/structure";s:11:"router_path";s:15:"admin/structure";s:10:"link_title";s:9:"Structure";s:7:"options";s:95:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:45:"Administer blocks, content types, menus, etc.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-8";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:15:"admin/structure";s:5:"title";s:9:"Structure";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:45:"Administer blocks, content types, menus, etc.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:19;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"19";s:4:"plid";s:1:"1";s:9:"link_path";s:11:"admin/tasks";s:11:"router_path";s:11:"admin/tasks";s:10:"link_title";s:5:"Tasks";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-20";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"19";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:5:"admin";s:8:"tab_root";s:5:"admin";s:5:"title";s:5:"Tasks";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}}s:10:"node_links";a:0:{}}	0	1418195166	1
links:management:all:0:en:0	a:2:{s:9:"min_depth";i:1;s:9:"max_depth";N;}	0	1418195166	1
links:management:tree-data:en:ec99d3452fef1ede622e66c68ba908b1dad455aa71f5e68648aeec6488b89c88	a:2:{s:4:"tree";a:1:{i:1;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:1:"1";s:4:"plid";s:1:"0";s:9:"link_path";s:5:"admin";s:11:"router_path";s:5:"admin";s:10:"link_title";s:14:"Administration";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"9";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:5:"admin";s:5:"title";s:14:"Administration";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:9:{i:6;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:1:"6";s:4:"plid";s:1:"1";s:9:"link_path";s:16:"admin/appearance";s:11:"router_path";s:16:"admin/appearance";s:10:"link_title";s:10:"Appearance";s:7:"options";s:83:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:33:"Select and configure your themes.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-6";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"6";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer themes";}";s:13:"page_callback";s:18:"system_themes_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:16:"admin/appearance";s:5:"title";s:10:"Appearance";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:33:"Select and configure your themes.";s:15:"in_active_trail";b:0;}s:5:"below";a:2:{i:32;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"32";s:4:"plid";s:1:"6";s:9:"link_path";s:21:"admin/appearance/list";s:11:"router_path";s:21:"admin/appearance/list";s:10:"link_title";s:4:"List";s:7:"options";s:81:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:31:"Select and configure your theme";}}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-1";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"6";s:2:"p3";s:2:"32";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer themes";}";s:13:"page_callback";s:18:"system_themes_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:16:"admin/appearance";s:8:"tab_root";s:16:"admin/appearance";s:5:"title";s:4:"List";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:31:"Select and configure your theme";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:40;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"40";s:4:"plid";s:1:"6";s:9:"link_path";s:25:"admin/appearance/settings";s:11:"router_path";s:25:"admin/appearance/settings";s:10:"link_title";s:8:"Settings";s:7:"options";s:96:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:46:"Configure default and theme specific settings.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"20";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"6";s:2:"p3";s:2:"40";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer themes";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:39:"a:1:{i:0;s:21:"system_theme_settings";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:16:"admin/appearance";s:8:"tab_root";s:16:"admin/appearance";s:5:"title";s:8:"Settings";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:46:"Configure default and theme specific settings.";s:15:"in_active_trail";b:0;}s:5:"below";a:5:{i:55;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"55";s:4:"plid";s:2:"40";s:9:"link_path";s:32:"admin/appearance/settings/bartik";s:11:"router_path";s:32:"admin/appearance/settings/bartik";s:10:"link_title";s:6:"Bartik";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"6";s:2:"p3";s:2:"40";s:2:"p4";s:2:"55";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:21:"_system_themes_access";s:16:"access_arguments";s:2442:"a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:25:"themes/bartik/bartik.info";s:4:"name";s:6:"bartik";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:6:"Bartik";s:11:"description";s:48:"A flexible, recolorable theme with many regions.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:28:"themes/bartik/css/layout.css";s:13:"css/style.css";s:27:"themes/bartik/css/style.css";s:14:"css/colors.css";s:28:"themes/bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:27:"themes/bartik/css/print.css";}}s:7:"regions";a:17:{s:6:"header";s:6:"Header";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:11:"highlighted";s:11:"Highlighted";s:8:"featured";s:8:"Featured";s:7:"content";s:7:"Content";s:13:"sidebar_first";s:13:"Sidebar first";s:14:"sidebar_second";s:14:"Sidebar second";s:14:"triptych_first";s:14:"Triptych first";s:15:"triptych_middle";s:15:"Triptych middle";s:13:"triptych_last";s:13:"Triptych last";s:18:"footer_firstcolumn";s:19:"Footer first column";s:19:"footer_secondcolumn";s:20:"Footer second column";s:18:"footer_thirdcolumn";s:19:"Footer third column";s:19:"footer_fourthcolumn";s:20:"Footer fourth column";s:6:"footer";s:6:"Footer";}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"0";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:28:"themes/bartik/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:28:"themes/bartik/css/layout.css";s:13:"css/style.css";s:27:"themes/bartik/css/style.css";s:14:"css/colors.css";s:28:"themes/bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:27:"themes/bartik/css/print.css";}}s:6:"engine";s:11:"phptemplate";}}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:56:"a:2:{i:0;s:21:"system_theme_settings";i:1;s:6:"bartik";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:25:"admin/appearance/settings";s:8:"tab_root";s:16:"admin/appearance";s:5:"title";s:6:"Bartik";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:61;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"61";s:4:"plid";s:2:"40";s:9:"link_path";s:33:"admin/appearance/settings/garland";s:11:"router_path";s:33:"admin/appearance/settings/garland";s:10:"link_title";s:7:"Garland";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"6";s:2:"p3";s:2:"40";s:2:"p4";s:2:"61";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:21:"_system_themes_access";s:16:"access_arguments";s:1863:"a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:27:"themes/garland/garland.info";s:4:"name";s:7:"garland";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:7:"Garland";s:11:"description";s:111:"A multi-column theme which can be configured to modify colors and switch between fixed and fluid width layouts.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:8:"settings";a:1:{s:13:"garland_width";s:5:"fluid";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:29:"themes/garland/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:6:"engine";s:11:"phptemplate";}}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:57:"a:2:{i:0;s:21:"system_theme_settings";i:1;s:7:"garland";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:25:"admin/appearance/settings";s:8:"tab_root";s:16:"admin/appearance";s:5:"title";s:7:"Garland";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:62;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"62";s:4:"plid";s:2:"40";s:9:"link_path";s:32:"admin/appearance/settings/global";s:11:"router_path";s:32:"admin/appearance/settings/global";s:10:"link_title";s:15:"Global settings";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-1";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"6";s:2:"p3";s:2:"40";s:2:"p4";s:2:"62";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer themes";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:39:"a:1:{i:0;s:21:"system_theme_settings";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:25:"admin/appearance/settings";s:8:"tab_root";s:16:"admin/appearance";s:5:"title";s:15:"Global settings";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:74;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"74";s:4:"plid";s:2:"40";s:9:"link_path";s:31:"admin/appearance/settings/seven";s:11:"router_path";s:31:"admin/appearance/settings/seven";s:10:"link_title";s:5:"Seven";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"6";s:2:"p3";s:2:"40";s:2:"p4";s:2:"74";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:21:"_system_themes_access";s:16:"access_arguments";s:1664:"a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:23:"themes/seven/seven.info";s:4:"name";s:5:"seven";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:5:"Seven";s:11:"description";s:65:"A simple one-column, tableless, fluid width administration theme.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:9:"reset.css";s:22:"themes/seven/reset.css";s:9:"style.css";s:22:"themes/seven/style.css";}}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"1";}s:7:"regions";a:5:{s:7:"content";s:7:"Content";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:13:"sidebar_first";s:13:"First sidebar";}s:14:"regions_hidden";a:3:{i:0;s:13:"sidebar_first";i:1;s:8:"page_top";i:2;s:11:"page_bottom";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/seven/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:9:"reset.css";s:22:"themes/seven/reset.css";s:9:"style.css";s:22:"themes/seven/style.css";}}s:6:"engine";s:11:"phptemplate";}}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:55:"a:2:{i:0;s:21:"system_theme_settings";i:1;s:5:"seven";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:25:"admin/appearance/settings";s:8:"tab_root";s:16:"admin/appearance";s:5:"title";s:5:"Seven";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:76;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"76";s:4:"plid";s:2:"40";s:9:"link_path";s:31:"admin/appearance/settings/stark";s:11:"router_path";s:31:"admin/appearance/settings/stark";s:10:"link_title";s:5:"Stark";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"6";s:2:"p3";s:2:"40";s:2:"p4";s:2:"76";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:21:"_system_themes_access";s:16:"access_arguments";s:1766:"a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:23:"themes/stark/stark.info";s:4:"name";s:5:"stark";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:17:{s:4:"name";s:5:"Stark";s:11:"description";s:208:"This theme demonstrates Drupal's default HTML markup and CSS styles. To learn how to build your own theme and override Drupal's default code, see the <a href="http://drupal.org/theme-guide">Theming Guide</a>.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"layout.css";s:23:"themes/stark/layout.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/stark/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"layout.css";s:23:"themes/stark/layout.css";}}s:6:"engine";s:11:"phptemplate";}}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:55:"a:2:{i:0;s:21:"system_theme_settings";i:1;s:5:"stark";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:25:"admin/appearance/settings";s:8:"tab_root";s:16:"admin/appearance";s:5:"title";s:5:"Stark";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}}}i:7;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:1:"7";s:4:"plid";s:1:"1";s:9:"link_path";s:12:"admin/config";s:11:"router_path";s:12:"admin/config";s:10:"link_title";s:13:"Configuration";s:7:"options";s:70:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:20:"Administer settings.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:24:"system_admin_config_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:12:"admin/config";s:5:"title";s:13:"Configuration";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:20:"Administer settings.";s:15:"in_active_trail";b:0;}s:5:"below";a:11:{i:24;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"24";s:4:"plid";s:1:"7";s:9:"link_path";s:20:"admin/config/content";s:11:"router_path";s:20:"admin/config/content";s:10:"link_title";s:17:"Content authoring";s:7:"options";s:103:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:53:"Settings related to formatting and authoring content.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-15";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"24";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:20:"admin/config/content";s:5:"title";s:17:"Content authoring";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:53:"Settings related to formatting and authoring content.";s:15:"in_active_trail";b:0;}s:5:"below";a:1:{i:77;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"77";s:4:"plid";s:2:"24";s:9:"link_path";s:28:"admin/config/content/formats";s:11:"router_path";s:28:"admin/config/content/formats";s:10:"link_title";s:12:"Text formats";s:7:"options";s:178:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:127:"Configure how content input by users is filtered, including allowed HTML tags. Also allows enabling of module-provided filters.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"24";s:2:"p4";s:2:"77";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer filters";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:39:"a:1:{i:0;s:21:"filter_admin_overview";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:28:"admin/config/content/formats";s:5:"title";s:12:"Text formats";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:127:"Configure how content input by users is filtered, including allowed HTML tags. Also allows enabling of module-provided filters.";s:15:"in_active_trail";b:0;}s:5:"below";a:3:{i:80;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"80";s:4:"plid";s:2:"77";s:9:"link_path";s:30:"admin/config/content/formats/%";s:11:"router_path";s:30:"admin/config/content/formats/%";s:10:"link_title";s:0:"";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"24";s:2:"p4";s:2:"77";s:2:"p5";s:2:"80";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:36:"a:1:{i:4;s:18:"filter_format_load";}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer filters";}";s:13:"page_callback";s:24:"filter_admin_format_page";s:14:"page_arguments";s:14:"a:1:{i:0;i:4;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:30:"admin/config/content/formats/%";s:5:"title";s:0:"";s:14:"title_callback";s:25:"filter_admin_format_title";s:15:"title_arguments";s:14:"a:1:{i:0;i:4;}";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:1:{i:107;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"107";s:4:"plid";s:2:"80";s:9:"link_path";s:38:"admin/config/content/formats/%/disable";s:11:"router_path";s:38:"admin/config/content/formats/%/disable";s:10:"link_title";s:19:"Disable text format";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"6";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"24";s:2:"p4";s:2:"77";s:2:"p5";s:2:"80";s:2:"p6";s:3:"107";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:36:"a:1:{i:4;s:18:"filter_format_load";}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:29:"_filter_disable_format_access";s:16:"access_arguments";s:14:"a:1:{i:0;i:4;}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:46:"a:2:{i:0;s:20:"filter_admin_disable";i:1;i:4;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:38:"admin/config/content/formats/%/disable";s:5:"title";s:19:"Disable text format";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}i:81;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"81";s:4:"plid";s:2:"77";s:9:"link_path";s:32:"admin/config/content/formats/add";s:11:"router_path";s:32:"admin/config/content/formats/add";s:10:"link_title";s:15:"Add text format";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"1";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"24";s:2:"p4";s:2:"77";s:2:"p5";s:2:"81";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer filters";}";s:13:"page_callback";s:24:"filter_admin_format_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:28:"admin/config/content/formats";s:8:"tab_root";s:28:"admin/config/content/formats";s:5:"title";s:15:"Add text format";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"388";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:87;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"87";s:4:"plid";s:2:"77";s:9:"link_path";s:33:"admin/config/content/formats/list";s:11:"router_path";s:33:"admin/config/content/formats/list";s:10:"link_title";s:4:"List";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"24";s:2:"p4";s:2:"77";s:2:"p5";s:2:"87";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer filters";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:39:"a:1:{i:0;s:21:"filter_admin_overview";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:28:"admin/config/content/formats";s:8:"tab_root";s:28:"admin/config/content/formats";s:5:"title";s:4:"List";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}}}i:27;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"27";s:4:"plid";s:1:"7";s:9:"link_path";s:24:"admin/config/development";s:11:"router_path";s:24:"admin/config/development";s:10:"link_title";s:11:"Development";s:7:"options";s:68:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:18:"Development tools.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-10";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"27";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:24:"admin/config/development";s:5:"title";s:11:"Development";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:18:"Development tools.";s:15:"in_active_trail";b:0;}s:5:"below";a:7:{i:67;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"67";s:4:"plid";s:2:"27";s:9:"link_path";s:32:"admin/config/development/logging";s:11:"router_path";s:32:"admin/config/development/logging";s:10:"link_title";s:18:"Logging and errors";s:7:"options";s:205:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:154:"Settings for logging and alerts modules. Various modules can route Drupal's system events to different destinations, such as syslog, database, email, etc.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-15";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"27";s:2:"p4";s:2:"67";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:41:"a:1:{i:0;s:23:"system_logging_settings";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:32:"admin/config/development/logging";s:5:"title";s:18:"Logging and errors";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:154:"Settings for logging and alerts modules. Various modules can route Drupal's system events to different destinations, such as syslog, database, email, etc.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:68;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"68";s:4:"plid";s:2:"27";s:9:"link_path";s:36:"admin/config/development/maintenance";s:11:"router_path";s:36:"admin/config/development/maintenance";s:10:"link_title";s:16:"Maintenance mode";s:7:"options";s:112:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:62:"Take the site offline for maintenance or bring it back online.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-10";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"27";s:2:"p4";s:2:"68";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:46:"a:1:{i:0;s:28:"system_site_maintenance_mode";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:36:"admin/config/development/maintenance";s:5:"title";s:16:"Maintenance mode";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:62:"Take the site offline for maintenance or bring it back online.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:69;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"69";s:4:"plid";s:2:"27";s:9:"link_path";s:36:"admin/config/development/performance";s:11:"router_path";s:36:"admin/config/development/performance";s:10:"link_title";s:11:"Performance";s:7:"options";s:152:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:101:"Enable or disable page caching for anonymous users and set CSS and JS bandwidth optimization options.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-20";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"27";s:2:"p4";s:2:"69";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:45:"a:1:{i:0;s:27:"system_performance_settings";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:36:"admin/config/development/performance";s:5:"title";s:11:"Performance";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:101:"Enable or disable page caching for anonymous users and set CSS and JS bandwidth optimization options.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:138;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"138";s:4:"plid";s:2:"27";s:9:"link_path";s:30:"admin/config/development/devel";s:11:"router_path";s:30:"admin/config/development/devel";s:10:"link_title";s:14:"Devel settings";s:7:"options";s:219:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:168:"Helper functions, pages, and blocks to assist Drupal developers. The devel blocks can be managed via the <a href="/admin/structure/block">block administration</a> page.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"27";s:2:"p4";s:3:"138";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:38:"a:1:{i:0;s:20:"devel_admin_settings";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:30:"admin/config/development/devel";s:5:"title";s:14:"Devel settings";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:168:"Helper functions, pages, and blocks to assist Drupal developers. The devel blocks can be managed via the <a href="/admin/structure/block">block administration</a> page.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:151;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"151";s:4:"plid";s:2:"27";s:9:"link_path";s:41:"admin/config/development/generate/content";s:11:"router_path";s:41:"admin/config/development/generate/content";s:10:"link_title";s:16:"Generate content";s:7:"options";s:129:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:79:"Generate a given number of nodes and comments. Optionally delete current items.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"27";s:2:"p4";s:3:"151";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:34:"a:1:{i:0;s:16:"administer nodes";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:45:"a:1:{i:0;s:27:"devel_generate_content_form";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:41:"admin/config/development/generate/content";s:5:"title";s:16:"Generate content";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:79:"Generate a given number of nodes and comments. Optionally delete current items.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:152;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"152";s:4:"plid";s:2:"27";s:9:"link_path";s:38:"admin/config/development/generate/menu";s:11:"router_path";s:38:"admin/config/development/generate/menu";s:10:"link_title";s:14:"Generate menus";s:7:"options";s:131:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:81:"Generate a given number of menus and menu links. Optionally delete current menus.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"27";s:2:"p4";s:3:"152";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:33:"a:1:{i:0;s:15:"administer menu";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:42:"a:1:{i:0;s:24:"devel_generate_menu_form";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:38:"admin/config/development/generate/menu";s:5:"title";s:14:"Generate menus";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:81:"Generate a given number of menus and menu links. Optionally delete current menus.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:153;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"153";s:4:"plid";s:2:"27";s:9:"link_path";s:38:"admin/config/development/generate/user";s:11:"router_path";s:38:"admin/config/development/generate/user";s:10:"link_title";s:14:"Generate users";s:7:"options";s:116:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:66:"Generate a given number of users. Optionally delete current users.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"27";s:2:"p4";s:3:"153";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:34:"a:1:{i:0;s:16:"administer users";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:43:"a:1:{i:0;s:25:"devel_generate_users_form";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:38:"admin/config/development/generate/user";s:5:"title";s:14:"Generate users";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:66:"Generate a given number of users. Optionally delete current users.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}i:33;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"33";s:4:"plid";s:1:"7";s:9:"link_path";s:18:"admin/config/media";s:11:"router_path";s:18:"admin/config/media";s:10:"link_title";s:5:"Media";s:7:"options";s:62:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:12:"Media tools.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-10";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"33";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:18:"admin/config/media";s:5:"title";s:5:"Media";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:12:"Media tools.";s:15:"in_active_trail";b:0;}s:5:"below";a:2:{i:60;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"60";s:4:"plid";s:2:"33";s:9:"link_path";s:30:"admin/config/media/file-system";s:11:"router_path";s:30:"admin/config/media/file-system";s:10:"link_title";s:11:"File system";s:7:"options";s:118:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:68:"Tell Drupal where to store uploaded files and how they are accessed.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-10";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"33";s:2:"p4";s:2:"60";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:45:"a:1:{i:0;s:27:"system_file_system_settings";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:30:"admin/config/media/file-system";s:5:"title";s:11:"File system";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:68:"Tell Drupal where to store uploaded files and how they are accessed.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:64;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"64";s:4:"plid";s:2:"33";s:9:"link_path";s:32:"admin/config/media/image-toolkit";s:11:"router_path";s:32:"admin/config/media/image-toolkit";s:10:"link_title";s:13:"Image toolkit";s:7:"options";s:124:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:74:"Choose which image toolkit to use if you have installed optional toolkits.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"20";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"33";s:2:"p4";s:2:"64";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:47:"a:1:{i:0;s:29:"system_image_toolkit_settings";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:32:"admin/config/media/image-toolkit";s:5:"title";s:13:"Image toolkit";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:74:"Choose which image toolkit to use if you have installed optional toolkits.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}i:34;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"34";s:4:"plid";s:1:"7";s:9:"link_path";s:19:"admin/config/people";s:11:"router_path";s:19:"admin/config/people";s:10:"link_title";s:6:"People";s:7:"options";s:74:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:24:"Configure user accounts.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-20";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"34";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:19:"admin/config/people";s:5:"title";s:6:"People";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:24:"Configure user accounts.";s:15:"in_active_trail";b:0;}s:5:"below";a:2:{i:51;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"51";s:4:"plid";s:2:"34";s:9:"link_path";s:28:"admin/config/people/accounts";s:11:"router_path";s:28:"admin/config/people/accounts";s:10:"link_title";s:16:"Account settings";s:7:"options";s:160:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:109:"Configure default behavior of users, including registration requirements, e-mails, fields, and user pictures.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-10";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"34";s:2:"p4";s:2:"51";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:34:"a:1:{i:0;s:16:"administer users";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:37:"a:1:{i:0;s:19:"user_admin_settings";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:28:"admin/config/people/accounts";s:5:"title";s:16:"Account settings";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:109:"Configure default behavior of users, including registration requirements, e-mails, fields, and user pictures.";s:15:"in_active_trail";b:0;}s:5:"below";a:1:{i:89;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"89";s:4:"plid";s:2:"51";s:9:"link_path";s:37:"admin/config/people/accounts/settings";s:11:"router_path";s:37:"admin/config/people/accounts/settings";s:10:"link_title";s:8:"Settings";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-10";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"34";s:2:"p4";s:2:"51";s:2:"p5";s:2:"89";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:34:"a:1:{i:0;s:16:"administer users";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:37:"a:1:{i:0;s:19:"user_admin_settings";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:28:"admin/config/people/accounts";s:8:"tab_root";s:28:"admin/config/people/accounts";s:5:"title";s:8:"Settings";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}i:63;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"63";s:4:"plid";s:2:"34";s:9:"link_path";s:31:"admin/config/people/ip-blocking";s:11:"router_path";s:31:"admin/config/people/ip-blocking";s:10:"link_title";s:19:"IP address blocking";s:7:"options";s:78:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:28:"Manage blocked IP addresses.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"10";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"34";s:2:"p4";s:2:"63";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"block IP addresses";}";s:13:"page_callback";s:18:"system_ip_blocking";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:31:"admin/config/people/ip-blocking";s:5:"title";s:19:"IP address blocking";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:28:"Manage blocked IP addresses.";s:15:"in_active_trail";b:0;}s:5:"below";a:1:{i:104;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"104";s:4:"plid";s:2:"63";s:9:"link_path";s:40:"admin/config/people/ip-blocking/delete/%";s:11:"router_path";s:40:"admin/config/people/ip-blocking/delete/%";s:10:"link_title";s:17:"Delete IP address";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"34";s:2:"p4";s:2:"63";s:2:"p5";s:3:"104";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:33:"a:1:{i:5;s:15:"blocked_ip_load";}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"block IP addresses";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:51:"a:2:{i:0;s:25:"system_ip_blocking_delete";i:1;i:5;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:40:"admin/config/people/ip-blocking/delete/%";s:5:"title";s:17:"Delete IP address";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}}}i:37;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"37";s:4:"plid";s:1:"7";s:9:"link_path";s:21:"admin/config/regional";s:11:"router_path";s:21:"admin/config/regional";s:10:"link_title";s:21:"Regional and language";s:7:"options";s:98:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:48:"Regional settings, localization and translation.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-5";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:21:"admin/config/regional";s:5:"title";s:21:"Regional and language";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:48:"Regional settings, localization and translation.";s:15:"in_active_trail";b:0;}s:5:"below";a:4:{i:58;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"58";s:4:"plid";s:2:"37";s:9:"link_path";s:31:"admin/config/regional/date-time";s:11:"router_path";s:31:"admin/config/regional/date-time";s:10:"link_title";s:13:"Date and time";s:7:"options";s:94:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:44:"Configure display formats for date and time.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-15";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:2:"58";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:43:"a:1:{i:0;s:25:"system_date_time_settings";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:31:"admin/config/regional/date-time";s:5:"title";s:13:"Date and time";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:44:"Configure display formats for date and time.";s:15:"in_active_trail";b:0;}s:5:"below";a:3:{i:85;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"85";s:4:"plid";s:2:"58";s:9:"link_path";s:39:"admin/config/regional/date-time/formats";s:11:"router_path";s:39:"admin/config/regional/date-time/formats";s:10:"link_title";s:7:"Formats";s:7:"options";s:101:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:51:"Configure display format strings for date and time.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-9";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:2:"58";s:2:"p5";s:2:"85";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:24:"system_date_time_formats";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:31:"admin/config/regional/date-time";s:8:"tab_root";s:31:"admin/config/regional/date-time";s:5:"title";s:7:"Formats";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:51:"Configure display format strings for date and time.";s:15:"in_active_trail";b:0;}s:5:"below";a:3:{i:100;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"100";s:4:"plid";s:2:"85";s:9:"link_path";s:43:"admin/config/regional/date-time/formats/add";s:11:"router_path";s:43:"admin/config/regional/date-time/formats/add";s:10:"link_title";s:10:"Add format";s:7:"options";s:93:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:43:"Allow users to add additional date formats.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-10";s:5:"depth";s:1:"6";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:2:"58";s:2:"p5";s:2:"85";s:2:"p6";s:3:"100";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:52:"a:1:{i:0;s:34:"system_configure_date_formats_form";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:39:"admin/config/regional/date-time/formats";s:8:"tab_root";s:31:"admin/config/regional/date-time";s:5:"title";s:10:"Add format";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"388";s:11:"description";s:43:"Allow users to add additional date formats.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:112;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"112";s:4:"plid";s:2:"85";s:9:"link_path";s:48:"admin/config/regional/date-time/formats/%/delete";s:11:"router_path";s:48:"admin/config/regional/date-time/formats/%/delete";s:10:"link_title";s:18:"Delete date format";s:7:"options";s:97:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:47:"Allow users to delete a configured date format.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"6";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:2:"58";s:2:"p5";s:2:"85";s:2:"p6";s:3:"112";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:12:"a:1:{i:5;N;}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:56:"a:2:{i:0;s:30:"system_date_delete_format_form";i:1;i:5;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:48:"admin/config/regional/date-time/formats/%/delete";s:5:"title";s:18:"Delete date format";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:47:"Allow users to delete a configured date format.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:114;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"114";s:4:"plid";s:2:"85";s:9:"link_path";s:46:"admin/config/regional/date-time/formats/%/edit";s:11:"router_path";s:46:"admin/config/regional/date-time/formats/%/edit";s:10:"link_title";s:16:"Edit date format";s:7:"options";s:95:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:45:"Allow users to edit a configured date format.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"6";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:2:"58";s:2:"p5";s:2:"85";s:2:"p6";s:3:"114";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:12:"a:1:{i:5;N;}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:60:"a:2:{i:0;s:34:"system_configure_date_formats_form";i:1;i:5;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:46:"admin/config/regional/date-time/formats/%/edit";s:5:"title";s:16:"Edit date format";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:45:"Allow users to edit a configured date format.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}i:92;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"92";s:4:"plid";s:2:"58";s:9:"link_path";s:37:"admin/config/regional/date-time/types";s:11:"router_path";s:37:"admin/config/regional/date-time/types";s:10:"link_title";s:5:"Types";s:7:"options";s:94:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:44:"Configure display formats for date and time.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-10";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:2:"58";s:2:"p5";s:2:"92";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:43:"a:1:{i:0;s:25:"system_date_time_settings";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:31:"admin/config/regional/date-time";s:8:"tab_root";s:31:"admin/config/regional/date-time";s:5:"title";s:5:"Types";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:44:"Configure display formats for date and time.";s:15:"in_active_trail";b:0;}s:5:"below";a:2:{i:99;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"99";s:4:"plid";s:2:"92";s:9:"link_path";s:41:"admin/config/regional/date-time/types/add";s:11:"router_path";s:41:"admin/config/regional/date-time/types/add";s:10:"link_title";s:13:"Add date type";s:7:"options";s:68:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:18:"Add new date type.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-10";s:5:"depth";s:1:"6";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:2:"58";s:2:"p5";s:2:"92";s:2:"p6";s:2:"99";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:50:"a:1:{i:0;s:32:"system_add_date_format_type_form";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:37:"admin/config/regional/date-time/types";s:8:"tab_root";s:31:"admin/config/regional/date-time";s:5:"title";s:13:"Add date type";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"388";s:11:"description";s:18:"Add new date type.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:113;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"113";s:4:"plid";s:2:"92";s:9:"link_path";s:46:"admin/config/regional/date-time/types/%/delete";s:11:"router_path";s:46:"admin/config/regional/date-time/types/%/delete";s:10:"link_title";s:16:"Delete date type";s:7:"options";s:95:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:45:"Allow users to delete a configured date type.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"6";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:2:"58";s:2:"p5";s:2:"92";s:2:"p6";s:3:"113";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:12:"a:1:{i:5;N;}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:61:"a:2:{i:0;s:35:"system_delete_date_format_type_form";i:1;i:5;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:46:"admin/config/regional/date-time/types/%/delete";s:5:"title";s:16:"Delete date type";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:45:"Allow users to delete a configured date type.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}i:156;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"156";s:4:"plid";s:2:"58";s:9:"link_path";s:38:"admin/config/regional/date-time/locale";s:11:"router_path";s:38:"admin/config/regional/date-time/locale";s:10:"link_title";s:8:"Localize";s:7:"options";s:88:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:38:"Configure date formats for each locale";}}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-8";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:2:"58";s:2:"p5";s:3:"156";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:41:"locale_date_format_language_overview_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:31:"admin/config/regional/date-time";s:8:"tab_root";s:31:"admin/config/regional/date-time";s:5:"title";s:8:"Localize";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:38:"Configure date formats for each locale";s:15:"in_active_trail";b:0;}s:5:"below";a:2:{i:167;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"167";s:4:"plid";s:3:"156";s:9:"link_path";s:45:"admin/config/regional/date-time/locale/%/edit";s:11:"router_path";s:45:"admin/config/regional/date-time/locale/%/edit";s:10:"link_title";s:21:"Localize date formats";s:7:"options";s:88:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:38:"Configure date formats for each locale";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"6";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:2:"58";s:2:"p5";s:3:"156";s:2:"p6";s:3:"167";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:12:"a:1:{i:5;N;}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:49:"a:2:{i:0;s:23:"locale_date_format_form";i:1;i:5;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:45:"admin/config/regional/date-time/locale/%/edit";s:5:"title";s:21:"Localize date formats";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:38:"Configure date formats for each locale";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:168;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"168";s:4:"plid";s:3:"156";s:9:"link_path";s:46:"admin/config/regional/date-time/locale/%/reset";s:11:"router_path";s:46:"admin/config/regional/date-time/locale/%/reset";s:10:"link_title";s:18:"Reset date formats";s:7:"options";s:97:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:47:"Reset localized date formats to global defaults";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"6";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:2:"58";s:2:"p5";s:3:"156";s:2:"p6";s:3:"168";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:12:"a:1:{i:5;N;}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:55:"a:2:{i:0;s:29:"locale_date_format_reset_form";i:1;i:5;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:46:"admin/config/regional/date-time/locale/%/reset";s:5:"title";s:18:"Reset date formats";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:47:"Reset localized date formats to global defaults";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}}}i:72;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"72";s:4:"plid";s:2:"37";s:9:"link_path";s:30:"admin/config/regional/settings";s:11:"router_path";s:30:"admin/config/regional/settings";s:10:"link_title";s:17:"Regional settings";s:7:"options";s:104:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:54:"Settings for the site's default time zone and country.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-20";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:2:"72";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:42:"a:1:{i:0;s:24:"system_regional_settings";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:30:"admin/config/regional/settings";s:5:"title";s:17:"Regional settings";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:54:"Settings for the site's default time zone and country.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:139;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"139";s:4:"plid";s:2:"37";s:9:"link_path";s:30:"admin/config/regional/language";s:11:"router_path";s:30:"admin/config/regional/language";s:10:"link_title";s:9:"Languages";s:7:"options";s:105:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:55:"Configure languages for content and the user interface.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-10";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:3:"139";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:38:"a:1:{i:0;s:20:"administer languages";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:48:"a:1:{i:0;s:30:"locale_languages_overview_form";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:30:"admin/config/regional/language";s:5:"title";s:9:"Languages";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:55:"Configure languages for content and the user interface.";s:15:"in_active_trail";b:0;}s:5:"below";a:6:{i:148;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"148";s:4:"plid";s:3:"139";s:9:"link_path";s:34:"admin/config/regional/language/add";s:11:"router_path";s:34:"admin/config/regional/language/add";s:10:"link_title";s:12:"Add language";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"5";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:3:"139";s:2:"p5";s:3:"148";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:38:"a:1:{i:0;s:20:"administer languages";}";s:13:"page_callback";s:27:"locale_languages_add_screen";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:30:"admin/config/regional/language";s:8:"tab_root";s:30:"admin/config/regional/language";s:5:"title";s:12:"Add language";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"388";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:149;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"149";s:4:"plid";s:3:"139";s:9:"link_path";s:40:"admin/config/regional/language/configure";s:11:"router_path";s:40:"admin/config/regional/language/configure";s:10:"link_title";s:23:"Detection and selection";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"10";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:3:"139";s:2:"p5";s:3:"149";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:38:"a:1:{i:0;s:20:"administer languages";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:49:"a:1:{i:0;s:31:"locale_languages_configure_form";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:30:"admin/config/regional/language";s:8:"tab_root";s:30:"admin/config/regional/language";s:5:"title";s:23:"Detection and selection";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:2:{i:165;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"165";s:4:"plid";s:3:"149";s:9:"link_path";s:48:"admin/config/regional/language/configure/session";s:11:"router_path";s:48:"admin/config/regional/language/configure/session";s:10:"link_title";s:40:"Session language detection configuration";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"6";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:3:"139";s:2:"p5";s:3:"149";s:2:"p6";s:3:"165";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:38:"a:1:{i:0;s:20:"administer languages";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:56:"a:1:{i:0;s:38:"locale_language_providers_session_form";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:48:"admin/config/regional/language/configure/session";s:5:"title";s:40:"Session language detection configuration";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"4";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:166;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"166";s:4:"plid";s:3:"149";s:9:"link_path";s:44:"admin/config/regional/language/configure/url";s:11:"router_path";s:44:"admin/config/regional/language/configure/url";s:10:"link_title";s:36:"URL language detection configuration";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"6";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:3:"139";s:2:"p5";s:3:"149";s:2:"p6";s:3:"166";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:38:"a:1:{i:0;s:20:"administer languages";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:52:"a:1:{i:0;s:34:"locale_language_providers_url_form";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:44:"admin/config/regional/language/configure/url";s:5:"title";s:36:"URL language detection configuration";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"4";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}i:155;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"155";s:4:"plid";s:3:"139";s:9:"link_path";s:39:"admin/config/regional/language/overview";s:11:"router_path";s:39:"admin/config/regional/language/overview";s:10:"link_title";s:4:"List";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:3:"139";s:2:"p5";s:3:"155";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:38:"a:1:{i:0;s:20:"administer languages";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:48:"a:1:{i:0;s:30:"locale_languages_overview_form";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:30:"admin/config/regional/language";s:8:"tab_root";s:30:"admin/config/regional/language";s:5:"title";s:4:"List";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:159;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"159";s:4:"plid";s:3:"139";s:9:"link_path";s:37:"admin/config/regional/language/update";s:11:"router_path";s:37:"admin/config/regional/language/update";s:10:"link_title";s:19:"Translation updates";s:7:"options";s:80:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:30:"Automatic update configuration";}}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"20";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:3:"139";s:2:"p5";s:3:"159";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:37:"a:1:{i:0;s:19:"translate interface";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:49:"a:1:{i:0;s:31:"l10n_update_admin_settings_form";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:30:"admin/config/regional/language";s:8:"tab_root";s:30:"admin/config/regional/language";s:5:"title";s:19:"Translation updates";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:30:"Automatic update configuration";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:161;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"161";s:4:"plid";s:3:"139";s:9:"link_path";s:39:"admin/config/regional/language/delete/%";s:11:"router_path";s:39:"admin/config/regional/language/delete/%";s:10:"link_title";s:7:"Confirm";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:3:"139";s:2:"p5";s:3:"161";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:12:"a:1:{i:5;N;}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:38:"a:1:{i:0;s:20:"administer languages";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:54:"a:2:{i:0;s:28:"locale_languages_delete_form";i:1;i:5;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:39:"admin/config/regional/language/delete/%";s:5:"title";s:7:"Confirm";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:163;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"163";s:4:"plid";s:3:"139";s:9:"link_path";s:37:"admin/config/regional/language/edit/%";s:11:"router_path";s:37:"admin/config/regional/language/edit/%";s:10:"link_title";s:13:"Edit language";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:3:"139";s:2:"p5";s:3:"163";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:12:"a:1:{i:5;N;}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:38:"a:1:{i:0;s:20:"administer languages";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:52:"a:2:{i:0;s:26:"locale_languages_edit_form";i:1;i:5;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:37:"admin/config/regional/language/edit/%";s:5:"title";s:13:"Edit language";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}i:145;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"145";s:4:"plid";s:2:"37";s:9:"link_path";s:31:"admin/config/regional/translate";s:11:"router_path";s:31:"admin/config/regional/translate";s:10:"link_title";s:19:"Translate interface";s:7:"options";s:109:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:59:"Translate the built in interface and optionally other text.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-5";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:3:"145";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:37:"a:1:{i:0;s:19:"translate interface";}";s:13:"page_callback";s:32:"locale_translate_overview_screen";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:31:"admin/config/regional/translate";s:5:"title";s:19:"Translate interface";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:59:"Translate the built in interface and optionally other text.";s:15:"in_active_trail";b:0;}s:5:"below";a:7:{i:150;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"150";s:4:"plid";s:3:"145";s:9:"link_path";s:38:"admin/config/regional/translate/export";s:11:"router_path";s:38:"admin/config/regional/translate/export";s:10:"link_title";s:6:"Export";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"30";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:3:"145";s:2:"p5";s:3:"150";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:37:"a:1:{i:0;s:19:"translate interface";}";s:13:"page_callback";s:30:"locale_translate_export_screen";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:31:"admin/config/regional/translate";s:8:"tab_root";s:31:"admin/config/regional/translate";s:5:"title";s:6:"Export";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:154;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"154";s:4:"plid";s:3:"145";s:9:"link_path";s:38:"admin/config/regional/translate/import";s:11:"router_path";s:38:"admin/config/regional/translate/import";s:10:"link_title";s:6:"Import";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"20";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:3:"145";s:2:"p5";s:3:"154";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:37:"a:1:{i:0;s:19:"translate interface";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:46:"a:1:{i:0;s:28:"locale_translate_import_form";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:31:"admin/config/regional/translate";s:8:"tab_root";s:31:"admin/config/regional/translate";s:5:"title";s:6:"Import";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:157;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"157";s:4:"plid";s:3:"145";s:9:"link_path";s:40:"admin/config/regional/translate/overview";s:11:"router_path";s:40:"admin/config/regional/translate/overview";s:10:"link_title";s:8:"Overview";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:3:"145";s:2:"p5";s:3:"157";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:37:"a:1:{i:0;s:19:"translate interface";}";s:13:"page_callback";s:32:"locale_translate_overview_screen";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:31:"admin/config/regional/translate";s:8:"tab_root";s:31:"admin/config/regional/translate";s:5:"title";s:8:"Overview";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:158;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"158";s:4:"plid";s:3:"145";s:9:"link_path";s:41:"admin/config/regional/translate/translate";s:11:"router_path";s:41:"admin/config/regional/translate/translate";s:10:"link_title";s:9:"Translate";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"10";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:3:"145";s:2:"p5";s:3:"158";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:37:"a:1:{i:0;s:19:"translate interface";}";s:13:"page_callback";s:28:"locale_translate_seek_screen";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:31:"admin/config/regional/translate";s:8:"tab_root";s:31:"admin/config/regional/translate";s:5:"title";s:9:"Translate";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:160;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"160";s:4:"plid";s:3:"145";s:9:"link_path";s:38:"admin/config/regional/translate/update";s:11:"router_path";s:38:"admin/config/regional/translate/update";s:10:"link_title";s:6:"Update";s:7:"options";s:67:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:17:"Available updates";}}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"20";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:3:"145";s:2:"p5";s:3:"160";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:37:"a:1:{i:0;s:19:"translate interface";}";s:13:"page_callback";s:26:"l10n_update_admin_overview";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:31:"admin/config/regional/translate";s:8:"tab_root";s:31:"admin/config/regional/translate";s:5:"title";s:6:"Update";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:17:"Available updates";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:162;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"162";s:4:"plid";s:3:"145";s:9:"link_path";s:40:"admin/config/regional/translate/delete/%";s:11:"router_path";s:40:"admin/config/regional/translate/delete/%";s:10:"link_title";s:13:"Delete string";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:3:"145";s:2:"p5";s:3:"162";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:12:"a:1:{i:5;N;}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:37:"a:1:{i:0;s:19:"translate interface";}";s:13:"page_callback";s:28:"locale_translate_delete_page";s:14:"page_arguments";s:14:"a:1:{i:0;i:5;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:40:"admin/config/regional/translate/delete/%";s:5:"title";s:13:"Delete string";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:164;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"164";s:4:"plid";s:3:"145";s:9:"link_path";s:38:"admin/config/regional/translate/edit/%";s:11:"router_path";s:38:"admin/config/regional/translate/edit/%";s:10:"link_title";s:11:"Edit string";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"37";s:2:"p4";s:3:"145";s:2:"p5";s:3:"164";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:12:"a:1:{i:5;N;}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:37:"a:1:{i:0;s:19:"translate interface";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:52:"a:2:{i:0;s:26:"locale_translate_edit_form";i:1;i:5;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:38:"admin/config/regional/translate/edit/%";s:5:"title";s:11:"Edit string";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}}}i:39;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"39";s:4:"plid";s:1:"7";s:9:"link_path";s:19:"admin/config/search";s:11:"router_path";s:19:"admin/config/search";s:10:"link_title";s:19:"Search and metadata";s:7:"options";s:86:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:36:"Local site search, metadata and SEO.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-10";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"39";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:19:"admin/config/search";s:5:"title";s:19:"Search and metadata";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:36:"Local site search, metadata and SEO.";s:15:"in_active_trail";b:0;}s:5:"below";a:1:{i:56;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"56";s:4:"plid";s:2:"39";s:9:"link_path";s:30:"admin/config/search/clean-urls";s:11:"router_path";s:30:"admin/config/search/clean-urls";s:10:"link_title";s:10:"Clean URLs";s:7:"options";s:93:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:43:"Enable or disable clean URLs for your site.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"5";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"39";s:2:"p4";s:2:"56";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:43:"a:1:{i:0;s:25:"system_clean_url_settings";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:30:"admin/config/search/clean-urls";s:5:"title";s:10:"Clean URLs";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:43:"Enable or disable clean URLs for your site.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}i:42;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"42";s:4:"plid";s:1:"7";s:9:"link_path";s:19:"admin/config/system";s:11:"router_path";s:19:"admin/config/system";s:10:"link_title";s:6:"System";s:7:"options";s:87:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:37:"General system related configuration.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-20";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"42";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:19:"admin/config/system";s:5:"title";s:6:"System";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:37:"General system related configuration.";s:15:"in_active_trail";b:0;}s:5:"below";a:3:{i:52;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"52";s:4:"plid";s:2:"42";s:9:"link_path";s:27:"admin/config/system/actions";s:11:"router_path";s:27:"admin/config/system/actions";s:10:"link_title";s:7:"Actions";s:7:"options";s:91:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:41:"Manage the actions defined for your site.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"42";s:2:"p4";s:2:"52";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer actions";}";s:13:"page_callback";s:21:"system_actions_manage";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:27:"admin/config/system/actions";s:5:"title";s:7:"Actions";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:41:"Manage the actions defined for your site.";s:15:"in_active_trail";b:0;}s:5:"below";a:3:{i:83;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"83";s:4:"plid";s:2:"52";s:9:"link_path";s:37:"admin/config/system/actions/configure";s:11:"router_path";s:37:"admin/config/system/actions/configure";s:10:"link_title";s:28:"Configure an advanced action";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"42";s:2:"p4";s:2:"52";s:2:"p5";s:2:"83";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer actions";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:42:"a:1:{i:0;s:24:"system_actions_configure";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:37:"admin/config/system/actions/configure";s:5:"title";s:28:"Configure an advanced action";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"4";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:88;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"88";s:4:"plid";s:2:"52";s:9:"link_path";s:34:"admin/config/system/actions/manage";s:11:"router_path";s:34:"admin/config/system/actions/manage";s:10:"link_title";s:14:"Manage actions";s:7:"options";s:91:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:41:"Manage the actions defined for your site.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-2";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"42";s:2:"p4";s:2:"52";s:2:"p5";s:2:"88";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer actions";}";s:13:"page_callback";s:21:"system_actions_manage";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:27:"admin/config/system/actions";s:8:"tab_root";s:27:"admin/config/system/actions";s:5:"title";s:14:"Manage actions";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:41:"Manage the actions defined for your site.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:105;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"105";s:4:"plid";s:2:"52";s:9:"link_path";s:36:"admin/config/system/actions/delete/%";s:11:"router_path";s:36:"admin/config/system/actions/delete/%";s:10:"link_title";s:13:"Delete action";s:7:"options";s:67:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:17:"Delete an action.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"42";s:2:"p4";s:2:"52";s:2:"p5";s:3:"105";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:30:"a:1:{i:5;s:12:"actions_load";}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer actions";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:52:"a:2:{i:0;s:26:"system_actions_delete_form";i:1;i:5;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:36:"admin/config/system/actions/delete/%";s:5:"title";s:13:"Delete action";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:17:"Delete an action.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}i:57;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"57";s:4:"plid";s:2:"42";s:9:"link_path";s:24:"admin/config/system/cron";s:11:"router_path";s:24:"admin/config/system/cron";s:10:"link_title";s:4:"Cron";s:7:"options";s:90:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:40:"Manage automatic site maintenance tasks.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"20";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"42";s:2:"p4";s:2:"57";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:38:"a:1:{i:0;s:20:"system_cron_settings";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:24:"admin/config/system/cron";s:5:"title";s:4:"Cron";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:40:"Manage automatic site maintenance tasks.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:75;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"75";s:4:"plid";s:2:"42";s:9:"link_path";s:36:"admin/config/system/site-information";s:11:"router_path";s:36:"admin/config/system/site-information";s:10:"link_title";s:16:"Site information";s:7:"options";s:155:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:104:"Change site name, e-mail address, slogan, default front page, and number of posts per page, error pages.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-20";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"42";s:2:"p4";s:2:"75";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:50:"a:1:{i:0;s:32:"system_site_information_settings";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:36:"admin/config/system/site-information";s:5:"title";s:16:"Site information";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:104:"Change site name, e-mail address, slogan, default front page, and number of posts per page, error pages.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}i:46;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"46";s:4:"plid";s:1:"7";s:9:"link_path";s:27:"admin/config/user-interface";s:11:"router_path";s:27:"admin/config/user-interface";s:10:"link_title";s:14:"User interface";s:7:"options";s:88:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:38:"Tools that enhance the user interface.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-15";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"46";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:27:"admin/config/user-interface";s:5:"title";s:14:"User interface";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:38:"Tools that enhance the user interface.";s:15:"in_active_trail";b:0;}s:5:"below";a:1:{i:142;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"142";s:4:"plid";s:2:"46";s:9:"link_path";s:40:"admin/config/user-interface/modulefilter";s:11:"router_path";s:40:"admin/config/user-interface/modulefilter";s:10:"link_title";s:13:"Module filter";s:7:"options";s:96:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:46:"Configure how the modules page looks and acts.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"46";s:2:"p4";s:3:"142";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:42:"a:1:{i:0;s:24:"administer module filter";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:40:"a:1:{i:0;s:22:"module_filter_settings";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:40:"admin/config/user-interface/modulefilter";s:5:"title";s:13:"Module filter";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:46:"Configure how the modules page looks and acts.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}i:49;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"49";s:4:"plid";s:1:"7";s:9:"link_path";s:21:"admin/config/services";s:11:"router_path";s:21:"admin/config/services";s:10:"link_title";s:12:"Web services";s:7:"options";s:80:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:30:"Tools related to web services.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"49";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:21:"admin/config/services";s:5:"title";s:12:"Web services";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:30:"Tools related to web services.";s:15:"in_active_trail";b:0;}s:5:"below";a:1:{i:71;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"71";s:4:"plid";s:2:"49";s:9:"link_path";s:36:"admin/config/services/rss-publishing";s:11:"router_path";s:36:"admin/config/services/rss-publishing";s:10:"link_title";s:14:"RSS publishing";s:7:"options";s:165:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:114:"Configure the site description, the number of items per feed and whether feeds should be titles/teasers/full-text.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"49";s:2:"p4";s:2:"71";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:43:"a:1:{i:0;s:25:"system_rss_feeds_settings";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:36:"admin/config/services/rss-publishing";s:5:"title";s:14:"RSS publishing";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:114:"Configure the site description, the number of items per feed and whether feeds should be titles/teasers/full-text.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}i:50;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"50";s:4:"plid";s:1:"7";s:9:"link_path";s:21:"admin/config/workflow";s:11:"router_path";s:21:"admin/config/workflow";s:10:"link_title";s:8:"Workflow";s:7:"options";s:93:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:43:"Content workflow, editorial workflow tools.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"5";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:2:"50";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:21:"admin/config/workflow";s:5:"title";s:8:"Workflow";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:43:"Content workflow, editorial workflow tools.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:125;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"125";s:4:"plid";s:1:"7";s:9:"link_path";s:27:"admin/config/administration";s:11:"router_path";s:27:"admin/config/administration";s:10:"link_title";s:14:"Administration";s:7:"options";s:71:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:21:"Administration tools.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:3:"125";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:27:"admin/config/administration";s:5:"title";s:14:"Administration";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:21:"Administration tools.";s:15:"in_active_trail";b:0;}s:5:"below";a:1:{i:137;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"137";s:4:"plid";s:3:"125";s:9:"link_path";s:38:"admin/config/administration/admin_menu";s:11:"router_path";s:38:"admin/config/administration/admin_menu";s:10:"link_title";s:19:"Administration menu";s:7:"options";s:86:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:36:"Adjust administration menu settings.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:3:"125";s:2:"p4";s:3:"137";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:43:"a:1:{i:0;s:25:"admin_menu_theme_settings";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:38:"admin/config/administration/admin_menu";s:5:"title";s:19:"Administration menu";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:36:"Adjust administration menu settings.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}}}i:8;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:1:"8";s:4:"plid";s:1:"1";s:9:"link_path";s:13:"admin/content";s:11:"router_path";s:13:"admin/content";s:10:"link_title";s:7:"Content";s:7:"options";s:74:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:24:"Find and manage content.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-10";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"8";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:41:"a:1:{i:0;s:23:"access content overview";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:36:"a:1:{i:0;s:18:"node_admin_content";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:13:"admin/content";s:5:"title";s:7:"Content";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:24:"Find and manage content.";s:15:"in_active_trail";b:0;}s:5:"below";a:1:{i:23;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"23";s:4:"plid";s:1:"8";s:9:"link_path";s:18:"admin/content/node";s:11:"router_path";s:18:"admin/content/node";s:10:"link_title";s:7:"Content";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-10";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"8";s:2:"p3";s:2:"23";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:41:"a:1:{i:0;s:23:"access content overview";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:36:"a:1:{i:0;s:18:"node_admin_content";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:13:"admin/content";s:8:"tab_root";s:13:"admin/content";s:5:"title";s:7:"Content";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}i:10;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"10";s:4:"plid";s:1:"1";s:9:"link_path";s:11:"admin/index";s:11:"router_path";s:11:"admin/index";s:10:"link_title";s:5:"Index";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-18";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"10";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:18:"system_admin_index";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:5:"admin";s:8:"tab_root";s:5:"admin";s:5:"title";s:5:"Index";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:13;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"13";s:4:"plid";s:1:"1";s:9:"link_path";s:13:"admin/modules";s:11:"router_path";s:13:"admin/modules";s:10:"link_title";s:7:"Modules";s:7:"options";s:76:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:26:"Extend site functionality.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-2";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"13";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer modules";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:32:"a:1:{i:0;s:14:"system_modules";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:13:"admin/modules";s:5:"title";s:7:"Modules";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:26:"Extend site functionality.";s:15:"in_active_trail";b:0;}s:5:"below";a:2:{i:30;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"30";s:4:"plid";s:2:"13";s:9:"link_path";s:18:"admin/modules/list";s:11:"router_path";s:18:"admin/modules/list";s:10:"link_title";s:4:"List";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"13";s:2:"p3";s:2:"30";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer modules";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:32:"a:1:{i:0;s:14:"system_modules";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:13:"admin/modules";s:8:"tab_root";s:13:"admin/modules";s:5:"title";s:4:"List";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:1:{i:65;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"65";s:4:"plid";s:2:"30";s:9:"link_path";s:26:"admin/modules/list/confirm";s:11:"router_path";s:26:"admin/modules/list/confirm";s:10:"link_title";s:4:"List";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"13";s:2:"p3";s:2:"30";s:2:"p4";s:2:"65";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer modules";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:32:"a:1:{i:0;s:14:"system_modules";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:26:"admin/modules/list/confirm";s:5:"title";s:4:"List";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"4";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}i:45;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"45";s:4:"plid";s:2:"13";s:9:"link_path";s:23:"admin/modules/uninstall";s:11:"router_path";s:23:"admin/modules/uninstall";s:10:"link_title";s:9:"Uninstall";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"20";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"13";s:2:"p3";s:2:"45";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer modules";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:42:"a:1:{i:0;s:24:"system_modules_uninstall";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:13:"admin/modules";s:8:"tab_root";s:13:"admin/modules";s:5:"title";s:9:"Uninstall";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:1:{i:78;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"78";s:4:"plid";s:2:"45";s:9:"link_path";s:31:"admin/modules/uninstall/confirm";s:11:"router_path";s:31:"admin/modules/uninstall/confirm";s:10:"link_title";s:9:"Uninstall";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"13";s:2:"p3";s:2:"45";s:2:"p4";s:2:"78";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer modules";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:42:"a:1:{i:0;s:24:"system_modules_uninstall";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:31:"admin/modules/uninstall/confirm";s:5:"title";s:9:"Uninstall";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"4";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}}}i:15;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"15";s:4:"plid";s:1:"1";s:9:"link_path";s:12:"admin/people";s:11:"router_path";s:12:"admin/people";s:10:"link_title";s:6:"People";s:7:"options";s:95:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:45:"Manage user accounts, roles, and permissions.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-4";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"15";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:34:"a:1:{i:0;s:16:"administer users";}";s:13:"page_callback";s:10:"user_admin";s:14:"page_arguments";s:21:"a:1:{i:0;s:4:"list";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:12:"admin/people";s:5:"title";s:6:"People";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:45:"Manage user accounts, roles, and permissions.";s:15:"in_active_trail";b:0;}s:5:"below";a:3:{i:20;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"20";s:4:"plid";s:2:"15";s:9:"link_path";s:19:"admin/people/create";s:11:"router_path";s:19:"admin/people/create";s:10:"link_title";s:8:"Add user";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"15";s:2:"p3";s:2:"20";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:34:"a:1:{i:0;s:16:"administer users";}";s:13:"page_callback";s:10:"user_admin";s:14:"page_arguments";s:23:"a:1:{i:0;s:6:"create";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:12:"admin/people";s:8:"tab_root";s:12:"admin/people";s:5:"title";s:8:"Add user";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"388";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:31;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"31";s:4:"plid";s:2:"15";s:9:"link_path";s:19:"admin/people/people";s:11:"router_path";s:19:"admin/people/people";s:10:"link_title";s:4:"List";s:7:"options";s:100:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:50:"Find and manage people interacting with your site.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-10";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"15";s:2:"p3";s:2:"31";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:34:"a:1:{i:0;s:16:"administer users";}";s:13:"page_callback";s:10:"user_admin";s:14:"page_arguments";s:21:"a:1:{i:0;s:4:"list";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:12:"admin/people";s:8:"tab_root";s:12:"admin/people";s:5:"title";s:4:"List";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:50:"Find and manage people interacting with your site.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:35;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"35";s:4:"plid";s:2:"15";s:9:"link_path";s:24:"admin/people/permissions";s:11:"router_path";s:24:"admin/people/permissions";s:10:"link_title";s:11:"Permissions";s:7:"options";s:114:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:64:"Determine access to features by selecting permissions for roles.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"15";s:2:"p3";s:2:"35";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:40:"a:1:{i:0;s:22:"administer permissions";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:40:"a:1:{i:0;s:22:"user_admin_permissions";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:12:"admin/people";s:8:"tab_root";s:12:"admin/people";s:5:"title";s:11:"Permissions";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:64:"Determine access to features by selecting permissions for roles.";s:15:"in_active_trail";b:0;}s:5:"below";a:2:{i:70;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"70";s:4:"plid";s:2:"35";s:9:"link_path";s:29:"admin/people/permissions/list";s:11:"router_path";s:29:"admin/people/permissions/list";s:10:"link_title";s:11:"Permissions";s:7:"options";s:114:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:64:"Determine access to features by selecting permissions for roles.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-8";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"15";s:2:"p3";s:2:"35";s:2:"p4";s:2:"70";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:40:"a:1:{i:0;s:22:"administer permissions";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:40:"a:1:{i:0;s:22:"user_admin_permissions";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:24:"admin/people/permissions";s:8:"tab_root";s:12:"admin/people";s:5:"title";s:11:"Permissions";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:64:"Determine access to features by selecting permissions for roles.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:73;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"73";s:4:"plid";s:2:"35";s:9:"link_path";s:30:"admin/people/permissions/roles";s:11:"router_path";s:30:"admin/people/permissions/roles";s:10:"link_title";s:5:"Roles";s:7:"options";s:80:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:30:"List, edit, or add user roles.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-5";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"15";s:2:"p3";s:2:"35";s:2:"p4";s:2:"73";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:40:"a:1:{i:0;s:22:"administer permissions";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:34:"a:1:{i:0;s:16:"user_admin_roles";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:24:"admin/people/permissions";s:8:"tab_root";s:12:"admin/people";s:5:"title";s:5:"Roles";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:30:"List, edit, or add user roles.";s:15:"in_active_trail";b:0;}s:5:"below";a:2:{i:106;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"106";s:4:"plid";s:2:"73";s:9:"link_path";s:39:"admin/people/permissions/roles/delete/%";s:11:"router_path";s:39:"admin/people/permissions/roles/delete/%";s:10:"link_title";s:11:"Delete role";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"15";s:2:"p3";s:2:"35";s:2:"p4";s:2:"73";s:2:"p5";s:3:"106";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:32:"a:1:{i:5;s:14:"user_role_load";}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:21:"user_role_edit_access";s:16:"access_arguments";s:14:"a:1:{i:0;i:5;}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:56:"a:2:{i:0;s:30:"user_admin_role_delete_confirm";i:1;i:5;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:39:"admin/people/permissions/roles/delete/%";s:5:"title";s:11:"Delete role";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:109;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"109";s:4:"plid";s:2:"73";s:9:"link_path";s:37:"admin/people/permissions/roles/edit/%";s:11:"router_path";s:37:"admin/people/permissions/roles/edit/%";s:10:"link_title";s:9:"Edit role";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"15";s:2:"p3";s:2:"35";s:2:"p4";s:2:"73";s:2:"p5";s:3:"109";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:32:"a:1:{i:5;s:14:"user_role_load";}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:21:"user_role_edit_access";s:16:"access_arguments";s:14:"a:1:{i:0;i:5;}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:41:"a:2:{i:0;s:15:"user_admin_role";i:1;i:5;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:37:"admin/people/permissions/roles/edit/%";s:5:"title";s:9:"Edit role";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}}}}}i:16;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"16";s:4:"plid";s:1:"1";s:9:"link_path";s:13:"admin/reports";s:11:"router_path";s:13:"admin/reports";s:10:"link_title";s:7:"Reports";s:7:"options";s:84:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:34:"View reports, updates, and errors.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"5";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"16";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:37:"a:1:{i:0;s:19:"access site reports";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:13:"admin/reports";s:5:"title";s:7:"Reports";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:34:"View reports, updates, and errors.";s:15:"in_active_trail";b:0;}s:5:"below";a:5:{i:36;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"36";s:4:"plid";s:2:"16";s:9:"link_path";s:19:"admin/reports/dblog";s:11:"router_path";s:19:"admin/reports/dblog";s:10:"link_title";s:19:"Recent log messages";s:7:"options";s:93:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:43:"View events that have recently been logged.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-1";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"16";s:2:"p3";s:2:"36";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:37:"a:1:{i:0;s:19:"access site reports";}";s:13:"page_callback";s:14:"dblog_overview";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:19:"admin/reports/dblog";s:5:"title";s:19:"Recent log messages";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:43:"View events that have recently been logged.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:41;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"41";s:4:"plid";s:2:"16";s:9:"link_path";s:20:"admin/reports/status";s:11:"router_path";s:20:"admin/reports/status";s:10:"link_title";s:13:"Status report";s:7:"options";s:124:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:74:"Get a status report about your site's operation and any detected problems.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-60";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"16";s:2:"p3";s:2:"41";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:13:"system_status";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:20:"admin/reports/status";s:5:"title";s:13:"Status report";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:74:"Get a status report about your site's operation and any detected problems.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:43;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"43";s:4:"plid";s:2:"16";s:9:"link_path";s:27:"admin/reports/access-denied";s:11:"router_path";s:27:"admin/reports/access-denied";s:10:"link_title";s:26:"Top 'access denied' errors";s:7:"options";s:85:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:35:"View 'access denied' errors (403s).";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"16";s:2:"p3";s:2:"43";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:37:"a:1:{i:0;s:19:"access site reports";}";s:13:"page_callback";s:9:"dblog_top";s:14:"page_arguments";s:31:"a:1:{i:0;s:13:"access denied";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:27:"admin/reports/access-denied";s:5:"title";s:26:"Top 'access denied' errors";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:35:"View 'access denied' errors (403s).";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:44;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"44";s:4:"plid";s:2:"16";s:9:"link_path";s:28:"admin/reports/page-not-found";s:11:"router_path";s:28:"admin/reports/page-not-found";s:10:"link_title";s:27:"Top 'page not found' errors";s:7:"options";s:86:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:36:"View 'page not found' errors (404s).";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"16";s:2:"p3";s:2:"44";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:37:"a:1:{i:0;s:19:"access site reports";}";s:13:"page_callback";s:9:"dblog_top";s:14:"page_arguments";s:32:"a:1:{i:0;s:14:"page not found";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:28:"admin/reports/page-not-found";s:5:"title";s:27:"Top 'page not found' errors";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:36:"View 'page not found' errors (404s).";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:59;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"59";s:4:"plid";s:2:"16";s:9:"link_path";s:21:"admin/reports/event/%";s:11:"router_path";s:21:"admin/reports/event/%";s:10:"link_title";s:7:"Details";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"16";s:2:"p3";s:2:"59";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:12:"a:1:{i:3;N;}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:37:"a:1:{i:0;s:19:"access site reports";}";s:13:"page_callback";s:11:"dblog_event";s:14:"page_arguments";s:14:"a:1:{i:0;i:3;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:21:"admin/reports/event/%";s:5:"title";s:7:"Details";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}i:18;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"18";s:4:"plid";s:1:"1";s:9:"link_path";s:15:"admin/structure";s:11:"router_path";s:15:"admin/structure";s:10:"link_title";s:9:"Structure";s:7:"options";s:95:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:45:"Administer blocks, content types, menus, etc.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-8";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:15:"admin/structure";s:5:"title";s:9:"Structure";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:45:"Administer blocks, content types, menus, etc.";s:15:"in_active_trail";b:0;}s:5:"below";a:2:{i:21;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"21";s:4:"plid";s:2:"18";s:9:"link_path";s:21:"admin/structure/block";s:11:"router_path";s:21:"admin/structure/block";s:10:"link_title";s:6:"Blocks";s:7:"options";s:129:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:79:"Configure what block content appears in your site's sidebars and other regions.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer blocks";}";s:13:"page_callback";s:19:"block_admin_display";s:14:"page_arguments";s:23:"a:1:{i:0;s:6:"bartik";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:21:"admin/structure/block";s:5:"title";s:6:"Blocks";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:79:"Configure what block content appears in your site's sidebars and other regions.";s:15:"in_active_trail";b:0;}s:5:"below";a:6:{i:53;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"53";s:4:"plid";s:2:"21";s:9:"link_path";s:25:"admin/structure/block/add";s:11:"router_path";s:25:"admin/structure/block/add";s:10:"link_title";s:9:"Add block";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:2:"53";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer blocks";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:38:"a:1:{i:0;s:20:"block_add_block_form";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:21:"admin/structure/block";s:8:"tab_root";s:21:"admin/structure/block";s:5:"title";s:9:"Add block";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"388";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:82;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"82";s:4:"plid";s:2:"21";s:9:"link_path";s:33:"admin/structure/block/list/bartik";s:11:"router_path";s:33:"admin/structure/block/list/bartik";s:10:"link_title";s:6:"Bartik";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-10";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:2:"82";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:20:"_block_themes_access";s:16:"access_arguments";s:2442:"a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:25:"themes/bartik/bartik.info";s:4:"name";s:6:"bartik";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:6:"Bartik";s:11:"description";s:48:"A flexible, recolorable theme with many regions.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:28:"themes/bartik/css/layout.css";s:13:"css/style.css";s:27:"themes/bartik/css/style.css";s:14:"css/colors.css";s:28:"themes/bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:27:"themes/bartik/css/print.css";}}s:7:"regions";a:17:{s:6:"header";s:6:"Header";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:11:"highlighted";s:11:"Highlighted";s:8:"featured";s:8:"Featured";s:7:"content";s:7:"Content";s:13:"sidebar_first";s:13:"Sidebar first";s:14:"sidebar_second";s:14:"Sidebar second";s:14:"triptych_first";s:14:"Triptych first";s:15:"triptych_middle";s:15:"Triptych middle";s:13:"triptych_last";s:13:"Triptych last";s:18:"footer_firstcolumn";s:19:"Footer first column";s:19:"footer_secondcolumn";s:20:"Footer second column";s:18:"footer_thirdcolumn";s:19:"Footer third column";s:19:"footer_fourthcolumn";s:20:"Footer fourth column";s:6:"footer";s:6:"Footer";}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"0";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:28:"themes/bartik/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:28:"themes/bartik/css/layout.css";s:13:"css/style.css";s:27:"themes/bartik/css/style.css";s:14:"css/colors.css";s:28:"themes/bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:27:"themes/bartik/css/print.css";}}s:6:"engine";s:11:"phptemplate";}}";s:13:"page_callback";s:19:"block_admin_display";s:14:"page_arguments";s:23:"a:1:{i:0;s:6:"bartik";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:21:"admin/structure/block";s:8:"tab_root";s:21:"admin/structure/block";s:5:"title";s:6:"Bartik";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:86;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"86";s:4:"plid";s:2:"21";s:9:"link_path";s:34:"admin/structure/block/list/garland";s:11:"router_path";s:34:"admin/structure/block/list/garland";s:10:"link_title";s:7:"Garland";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:2:"86";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:20:"_block_themes_access";s:16:"access_arguments";s:1863:"a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:27:"themes/garland/garland.info";s:4:"name";s:7:"garland";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:7:"Garland";s:11:"description";s:111:"A multi-column theme which can be configured to modify colors and switch between fixed and fluid width layouts.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:8:"settings";a:1:{s:13:"garland_width";s:5:"fluid";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:29:"themes/garland/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:6:"engine";s:11:"phptemplate";}}";s:13:"page_callback";s:19:"block_admin_display";s:14:"page_arguments";s:24:"a:1:{i:0;s:7:"garland";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:21:"admin/structure/block";s:8:"tab_root";s:21:"admin/structure/block";s:5:"title";s:7:"Garland";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:1:{i:96;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"96";s:4:"plid";s:2:"86";s:9:"link_path";s:38:"admin/structure/block/list/garland/add";s:11:"router_path";s:38:"admin/structure/block/list/garland/add";s:10:"link_title";s:9:"Add block";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:2:"86";s:2:"p5";s:2:"96";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer blocks";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:38:"a:1:{i:0;s:20:"block_add_block_form";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:34:"admin/structure/block/list/garland";s:8:"tab_root";s:21:"admin/structure/block";s:5:"title";s:9:"Add block";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"388";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}i:90;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"90";s:4:"plid";s:2:"21";s:9:"link_path";s:32:"admin/structure/block/list/seven";s:11:"router_path";s:32:"admin/structure/block/list/seven";s:10:"link_title";s:5:"Seven";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:2:"90";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:20:"_block_themes_access";s:16:"access_arguments";s:1664:"a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:23:"themes/seven/seven.info";s:4:"name";s:5:"seven";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:5:"Seven";s:11:"description";s:65:"A simple one-column, tableless, fluid width administration theme.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:9:"reset.css";s:22:"themes/seven/reset.css";s:9:"style.css";s:22:"themes/seven/style.css";}}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"1";}s:7:"regions";a:5:{s:7:"content";s:7:"Content";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:13:"sidebar_first";s:13:"First sidebar";}s:14:"regions_hidden";a:3:{i:0;s:13:"sidebar_first";i:1;s:8:"page_top";i:2;s:11:"page_bottom";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/seven/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:9:"reset.css";s:22:"themes/seven/reset.css";s:9:"style.css";s:22:"themes/seven/style.css";}}s:6:"engine";s:11:"phptemplate";}}";s:13:"page_callback";s:19:"block_admin_display";s:14:"page_arguments";s:22:"a:1:{i:0;s:5:"seven";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:21:"admin/structure/block";s:8:"tab_root";s:21:"admin/structure/block";s:5:"title";s:5:"Seven";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:1:{i:97;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"97";s:4:"plid";s:2:"90";s:9:"link_path";s:36:"admin/structure/block/list/seven/add";s:11:"router_path";s:36:"admin/structure/block/list/seven/add";s:10:"link_title";s:9:"Add block";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:2:"90";s:2:"p5";s:2:"97";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer blocks";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:38:"a:1:{i:0;s:20:"block_add_block_form";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:32:"admin/structure/block/list/seven";s:8:"tab_root";s:21:"admin/structure/block";s:5:"title";s:9:"Add block";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"388";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}i:91;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"91";s:4:"plid";s:2:"21";s:9:"link_path";s:32:"admin/structure/block/list/stark";s:11:"router_path";s:32:"admin/structure/block/list/stark";s:10:"link_title";s:5:"Stark";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:2:"91";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:20:"_block_themes_access";s:16:"access_arguments";s:1766:"a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:23:"themes/stark/stark.info";s:4:"name";s:5:"stark";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:17:{s:4:"name";s:5:"Stark";s:11:"description";s:208:"This theme demonstrates Drupal's default HTML markup and CSS styles. To learn how to build your own theme and override Drupal's default code, see the <a href="http://drupal.org/theme-guide">Theming Guide</a>.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"layout.css";s:23:"themes/stark/layout.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/stark/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"layout.css";s:23:"themes/stark/layout.css";}}s:6:"engine";s:11:"phptemplate";}}";s:13:"page_callback";s:19:"block_admin_display";s:14:"page_arguments";s:22:"a:1:{i:0;s:5:"stark";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:21:"admin/structure/block";s:8:"tab_root";s:21:"admin/structure/block";s:5:"title";s:5:"Stark";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:1:{i:98;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"98";s:4:"plid";s:2:"91";s:9:"link_path";s:36:"admin/structure/block/list/stark/add";s:11:"router_path";s:36:"admin/structure/block/list/stark/add";s:10:"link_title";s:9:"Add block";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:2:"91";s:2:"p5";s:2:"98";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer blocks";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:38:"a:1:{i:0;s:20:"block_add_block_form";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:32:"admin/structure/block/list/stark";s:8:"tab_root";s:21:"admin/structure/block";s:5:"title";s:9:"Add block";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"388";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}i:101;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"101";s:4:"plid";s:2:"21";s:9:"link_path";s:32:"admin/structure/block/manage/%/%";s:11:"router_path";s:32:"admin/structure/block/manage/%/%";s:10:"link_title";s:15:"Configure block";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:3:"101";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:18:"a:2:{i:4;N;i:5;N;}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer blocks";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:55:"a:3:{i:0;s:21:"block_admin_configure";i:1;i:4;i:2;i:5;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:32:"admin/structure/block/manage/%/%";s:5:"title";s:15:"Configure block";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:2:{i:110;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"110";s:4:"plid";s:3:"101";s:9:"link_path";s:42:"admin/structure/block/manage/%/%/configure";s:11:"router_path";s:42:"admin/structure/block/manage/%/%/configure";s:10:"link_title";s:15:"Configure block";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:3:"101";s:2:"p5";s:3:"110";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:18:"a:2:{i:4;N;i:5;N;}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer blocks";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:55:"a:3:{i:0;s:21:"block_admin_configure";i:1;i:4;i:2;i:5;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:32:"admin/structure/block/manage/%/%";s:8:"tab_root";s:32:"admin/structure/block/manage/%/%";s:5:"title";s:15:"Configure block";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:111;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"111";s:4:"plid";s:3:"101";s:9:"link_path";s:39:"admin/structure/block/manage/%/%/delete";s:11:"router_path";s:39:"admin/structure/block/manage/%/%/delete";s:10:"link_title";s:12:"Delete block";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:3:"101";s:2:"p5";s:3:"111";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:18:"a:2:{i:4;N;i:5;N;}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer blocks";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:59:"a:3:{i:0;s:25:"block_custom_block_delete";i:1;i:4;i:2;i:5;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:32:"admin/structure/block/manage/%/%";s:8:"tab_root";s:32:"admin/structure/block/manage/%/%";s:5:"title";s:12:"Delete block";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}}}i:25;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"25";s:4:"plid";s:2:"18";s:9:"link_path";s:21:"admin/structure/types";s:11:"router_path";s:21:"admin/structure/types";s:10:"link_title";s:13:"Content types";s:7:"options";s:142:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:92:"Manage content types, including default status, front page promotion, comment settings, etc.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"25";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:42:"a:1:{i:0;s:24:"administer content types";}";s:13:"page_callback";s:19:"node_overview_types";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:21:"admin/structure/types";s:5:"title";s:13:"Content types";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:92:"Manage content types, including default status, front page promotion, comment settings, etc.";s:15:"in_active_trail";b:0;}s:5:"below";a:3:{i:54;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"54";s:4:"plid";s:2:"25";s:9:"link_path";s:25:"admin/structure/types/add";s:11:"router_path";s:25:"admin/structure/types/add";s:10:"link_title";s:16:"Add content type";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"25";s:2:"p4";s:2:"54";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:42:"a:1:{i:0;s:24:"administer content types";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:32:"a:1:{i:0;s:14:"node_type_form";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:21:"admin/structure/types";s:8:"tab_root";s:21:"admin/structure/types";s:5:"title";s:16:"Add content type";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"388";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:66;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"66";s:4:"plid";s:2:"25";s:9:"link_path";s:26:"admin/structure/types/list";s:11:"router_path";s:26:"admin/structure/types/list";s:10:"link_title";s:4:"List";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-10";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"25";s:2:"p4";s:2:"66";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:42:"a:1:{i:0;s:24:"administer content types";}";s:13:"page_callback";s:19:"node_overview_types";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:21:"admin/structure/types";s:8:"tab_root";s:21:"admin/structure/types";s:5:"title";s:4:"List";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:84;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"84";s:4:"plid";s:2:"25";s:9:"link_path";s:30:"admin/structure/types/manage/%";s:11:"router_path";s:30:"admin/structure/types/manage/%";s:10:"link_title";s:17:"Edit content type";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"25";s:2:"p4";s:2:"84";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:32:"a:1:{i:4;s:14:"node_type_load";}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:42:"a:1:{i:0;s:24:"administer content types";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:40:"a:2:{i:0;s:14:"node_type_form";i:1;i:4;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:30:"admin/structure/types/manage/%";s:5:"title";s:17:"Edit content type";s:14:"title_callback";s:20:"node_type_page_title";s:15:"title_arguments";s:14:"a:1:{i:0;i:4;}";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:2:{i:103;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"103";s:4:"plid";s:2:"84";s:9:"link_path";s:37:"admin/structure/types/manage/%/delete";s:11:"router_path";s:37:"admin/structure/types/manage/%/delete";s:10:"link_title";s:6:"Delete";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"25";s:2:"p4";s:2:"84";s:2:"p5";s:3:"103";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:32:"a:1:{i:4;s:14:"node_type_load";}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:42:"a:1:{i:0;s:24:"administer content types";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:50:"a:2:{i:0;s:24:"node_type_delete_confirm";i:1;i:4;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:37:"admin/structure/types/manage/%/delete";s:5:"title";s:6:"Delete";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:108;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"108";s:4:"plid";s:2:"84";s:9:"link_path";s:35:"admin/structure/types/manage/%/edit";s:11:"router_path";s:35:"admin/structure/types/manage/%/edit";s:10:"link_title";s:4:"Edit";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"25";s:2:"p4";s:2:"84";s:2:"p5";s:3:"108";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:32:"a:1:{i:4;s:14:"node_type_load";}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:42:"a:1:{i:0;s:24:"administer content types";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:40:"a:2:{i:0;s:14:"node_type_form";i:1;i:4;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:30:"admin/structure/types/manage/%";s:8:"tab_root";s:30:"admin/structure/types/manage/%";s:5:"title";s:4:"Edit";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}}}}}i:19;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"19";s:4:"plid";s:1:"1";s:9:"link_path";s:11:"admin/tasks";s:11:"router_path";s:11:"admin/tasks";s:10:"link_title";s:5:"Tasks";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-20";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"19";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:5:"admin";s:8:"tab_root";s:5:"admin";s:5:"title";s:5:"Tasks";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}}s:10:"node_links";a:0:{}}	0	1418195166	1
links:devel:tree-data:en:35786c7117b4e38d0f169239752ce71158266ae2f6e4aa230fbbb87bd699c0e3	a:2:{s:4:"tree";a:15:{i:115;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:5:"devel";s:4:"mlid";s:3:"115";s:4:"plid";s:1:"0";s:9:"link_path";s:14:"devel/settings";s:11:"router_path";s:14:"devel/settings";s:10:"link_title";s:14:"Devel settings";s:7:"options";s:219:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:168:"Helper functions, pages, and blocks to assist Drupal developers. The devel blocks can be managed via the <a href="/admin/structure/block">block administration</a> page.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:3:"115";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:38:"a:1:{i:0;s:20:"devel_admin_settings";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:14:"devel/settings";s:5:"title";s:14:"Devel settings";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:168:"Helper functions, pages, and blocks to assist Drupal developers. The devel blocks can be managed via the <a href="/admin/structure/block">block administration</a> page.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:116;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:5:"devel";s:4:"mlid";s:3:"116";s:4:"plid";s:1:"0";s:9:"link_path";s:9:"devel/php";s:11:"router_path";s:9:"devel/php";s:10:"link_title";s:16:"Execute PHP Code";s:7:"options";s:71:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:21:"Execute some PHP code";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:3:"116";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:34:"a:1:{i:0;s:16:"execute php code";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:36:"a:1:{i:0;s:18:"devel_execute_form";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:9:"devel/php";s:5:"title";s:16:"Execute PHP Code";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:21:"Execute some PHP code";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:117;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:5:"devel";s:4:"mlid";s:3:"117";s:4:"plid";s:1:"0";s:9:"link_path";s:15:"devel/reference";s:11:"router_path";s:15:"devel/reference";s:10:"link_title";s:18:"Function reference";s:7:"options";s:123:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:73:"View a list of currently defined user functions with documentation links.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:3:"117";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:42:"a:1:{i:0;s:24:"access devel information";}";s:13:"page_callback";s:24:"devel_function_reference";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:15:"devel/reference";s:5:"title";s:18:"Function reference";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:73:"View a list of currently defined user functions with documentation links.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:118;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:5:"devel";s:4:"mlid";s:3:"118";s:4:"plid";s:1:"0";s:9:"link_path";s:14:"devel/elements";s:11:"router_path";s:14:"devel/elements";s:10:"link_title";s:15:"Hook_elements()";s:7:"options";s:101:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:51:"View the active form/render elements for this site.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:3:"118";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:42:"a:1:{i:0;s:24:"access devel information";}";s:13:"page_callback";s:19:"devel_elements_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:14:"devel/elements";s:5:"title";s:15:"Hook_elements()";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:51:"View the active form/render elements for this site.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:119;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:5:"devel";s:4:"mlid";s:3:"119";s:4:"plid";s:1:"0";s:9:"link_path";s:13:"devel/phpinfo";s:11:"router_path";s:13:"devel/phpinfo";s:10:"link_title";s:9:"PHPinfo()";s:7:"options";s:86:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:36:"View your server's PHP configuration";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:3:"119";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:42:"a:1:{i:0;s:24:"access devel information";}";s:13:"page_callback";s:13:"devel_phpinfo";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:13:"devel/phpinfo";s:5:"title";s:9:"PHPinfo()";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:36:"View your server's PHP configuration";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:120;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:5:"devel";s:4:"mlid";s:3:"120";s:4:"plid";s:1:"0";s:9:"link_path";s:15:"devel/reinstall";s:11:"router_path";s:15:"devel/reinstall";s:10:"link_title";s:17:"Reinstall modules";s:7:"options";s:130:"a:2:{s:10:"attributes";a:1:{s:5:"title";s:64:"Run hook_uninstall() and then hook_install() for a given module.";}s:5:"alter";b:1;}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:3:"120";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:42:"a:1:{i:0;s:24:"access devel information";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:33:"a:1:{i:0;s:15:"devel_reinstall";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:15:"devel/reinstall";s:5:"title";s:17:"Reinstall modules";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:64:"Run hook_uninstall() and then hook_install() for a given module.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:121;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:5:"devel";s:4:"mlid";s:3:"121";s:4:"plid";s:1:"0";s:9:"link_path";s:14:"devel/run-cron";s:11:"router_path";s:14:"devel/run-cron";s:10:"link_title";s:8:"Run cron";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:3:"121";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:47:"a:1:{i:0;s:29:"administer site configuration";}";s:13:"page_callback";s:15:"system_run_cron";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:14:"devel/run-cron";s:5:"title";s:8:"Run cron";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:122;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:5:"devel";s:4:"mlid";s:3:"122";s:4:"plid";s:1:"0";s:9:"link_path";s:13:"devel/session";s:11:"router_path";s:13:"devel/session";s:10:"link_title";s:14:"Session viewer";s:7:"options";s:81:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:31:"List the contents of $_SESSION.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:3:"122";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:42:"a:1:{i:0;s:24:"access devel information";}";s:13:"page_callback";s:13:"devel_session";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:13:"devel/session";s:5:"title";s:14:"Session viewer";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:31:"List the contents of $_SESSION.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:123;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:5:"devel";s:4:"mlid";s:3:"123";s:4:"plid";s:1:"0";s:9:"link_path";s:14:"devel/variable";s:11:"router_path";s:14:"devel/variable";s:10:"link_title";s:15:"Variable editor";s:7:"options";s:97:"a:2:{s:10:"attributes";a:1:{s:5:"title";s:31:"Edit and delete site variables.";}s:5:"alter";b:1;}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:3:"123";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:42:"a:1:{i:0;s:24:"access devel information";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:37:"a:1:{i:0;s:19:"devel_variable_form";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:14:"devel/variable";s:5:"title";s:15:"Variable editor";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:31:"Edit and delete site variables.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:126;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:5:"devel";s:4:"mlid";s:3:"126";s:4:"plid";s:1:"0";s:9:"link_path";s:17:"devel/cache/clear";s:11:"router_path";s:17:"devel/cache/clear";s:10:"link_title";s:11:"Clear cache";s:7:"options";s:167:"a:2:{s:10:"attributes";a:1:{s:5:"title";s:100:"Clear the CSS cache and all database cache tables which store page, node, theme and variable caches.";}s:5:"alter";b:1;}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:3:"126";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:42:"a:1:{i:0;s:24:"access devel information";}";s:13:"page_callback";s:17:"devel_cache_clear";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:17:"devel/cache/clear";s:5:"title";s:11:"Clear cache";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:100:"Clear the CSS cache and all database cache tables which store page, node, theme and variable caches.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:129;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:5:"devel";s:4:"mlid";s:3:"129";s:4:"plid";s:1:"0";s:9:"link_path";s:17:"devel/entity/info";s:11:"router_path";s:17:"devel/entity/info";s:10:"link_title";s:11:"Entity info";s:7:"options";s:96:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:46:"View entity information across the whole site.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:3:"129";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:42:"a:1:{i:0;s:24:"access devel information";}";s:13:"page_callback";s:22:"devel_entity_info_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:17:"devel/entity/info";s:5:"title";s:11:"Entity info";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:46:"View entity information across the whole site.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:130;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:5:"devel";s:4:"mlid";s:3:"130";s:4:"plid";s:1:"0";s:9:"link_path";s:16:"devel/field/info";s:11:"router_path";s:16:"devel/field/info";s:10:"link_title";s:10:"Field info";s:7:"options";s:96:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:46:"View fields information across the whole site.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:3:"130";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:42:"a:1:{i:0;s:24:"access devel information";}";s:13:"page_callback";s:21:"devel_field_info_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:16:"devel/field/info";s:5:"title";s:10:"Field info";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:46:"View fields information across the whole site.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:131;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:5:"devel";s:4:"mlid";s:3:"131";s:4:"plid";s:1:"0";s:9:"link_path";s:15:"devel/menu/item";s:11:"router_path";s:15:"devel/menu/item";s:10:"link_title";s:9:"Menu item";s:7:"options";s:98:"a:2:{s:10:"attributes";a:1:{s:5:"title";s:32:"Details about a given menu item.";}s:5:"alter";b:1;}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:3:"131";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:42:"a:1:{i:0;s:24:"access devel information";}";s:13:"page_callback";s:15:"devel_menu_item";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:15:"devel/menu/item";s:5:"title";s:9:"Menu item";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:32:"Details about a given menu item.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:132;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:5:"devel";s:4:"mlid";s:3:"132";s:4:"plid";s:1:"0";s:9:"link_path";s:16:"devel/menu/reset";s:11:"router_path";s:16:"devel/menu/reset";s:10:"link_title";s:13:"Rebuild menus";s:7:"options";s:180:"a:2:{s:10:"attributes";a:1:{s:5:"title";s:113:"Rebuild menu based on hook_menu() and revert any custom changes. All menu items return to their default settings.";}s:5:"alter";b:1;}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:3:"132";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:42:"a:1:{i:0;s:24:"access devel information";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:36:"a:1:{i:0;s:18:"devel_menu_rebuild";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:16:"devel/menu/reset";s:5:"title";s:13:"Rebuild menus";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:113:"Rebuild menu based on hook_menu() and revert any custom changes. All menu items return to their default settings.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:133;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:5:"devel";s:4:"mlid";s:3:"133";s:4:"plid";s:1:"0";s:9:"link_path";s:20:"devel/theme/registry";s:11:"router_path";s:20:"devel/theme/registry";s:10:"link_title";s:14:"Theme registry";s:7:"options";s:113:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:63:"View a list of available theme functions across the whole site.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:3:"133";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:42:"a:1:{i:0;s:24:"access devel information";}";s:13:"page_callback";s:20:"devel_theme_registry";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:20:"devel/theme/registry";s:5:"title";s:14:"Theme registry";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:63:"View a list of available theme functions across the whole site.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}s:10:"node_links";a:0:{}}	0	1418195166	1
links:navigation:tree-data:en:3d3911bc0ead81c0e697167576c039613ad48898249877825480e25d7e1cc040	a:2:{s:4:"tree";a:1:{i:5;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"navigation";s:4:"mlid";s:1:"5";s:4:"plid";s:1:"0";s:9:"link_path";s:8:"node/add";s:11:"router_path";s:8:"node/add";s:10:"link_title";s:11:"Add content";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:1:"5";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:16:"_node_add_access";s:16:"access_arguments";s:6:"a:0:{}";s:13:"page_callback";s:13:"node_add_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:8:"node/add";s:5:"title";s:11:"Add content";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}s:10:"node_links";a:0:{}}	0	1418195166	1
admin_menu:1:k2Jk6ajihHN-jmflYb-4BC_ZTmOLpm772eYCjHJN1V4:en	<div id="admin-menu" class="admin-menu-site-pg-vekev-ru"><div id="admin-menu-wrapper">\\012<ul id="admin-menu-icon" class="dropdown"><li class="admin-menu-icon admin-menu-toolbar-category expandable"><a href="/"><span>Home</span></a>\\012<ul class="dropdown"><li><a href="/admin/index">Index</a></li><li class="expandable"><a href="/admin_menu/flush-cache?token=d3hSsV_0c-oznQEi7EviFnu0295uEreMVbh-I__WXLY" class="admin-menu-destination">Flush all caches</a>\\012<ul class="dropdown"><li><a href="/admin_menu/flush-cache/admin_menu?token=5TcNQRAG7etG_sRPev2chTN4f2TPJS0vPrIp0aKQQBY" class="admin-menu-destination">Administration menu</a></li><li><a href="/admin_menu/flush-cache/registry?token=30eGXQEsaAX3rhofeFoYm6rctUc4LDrO4dKm3gCrVnQ" class="admin-menu-destination">Class registry</a></li><li><a href="/admin_menu/flush-cache/assets?token=AcrBFINOpd7wD60iT6-fMDadgY4KzZM30brtYuuR12E" class="admin-menu-destination">CSS and JavaScript</a></li><li><a href="/admin_menu/flush-cache/menu?token=p8khoYlOUueivLl_vYrUF_YEZedov4vdvasoA33vItA" class="admin-menu-destination">Menu</a></li><li><a href="/admin_menu/flush-cache/cache?token=afiWgl8FxAwWf25h3973mpfJCki6ENfw-I-G1n_uXuU" class="admin-menu-destination">Page and else</a></li><li><a href="/admin_menu/flush-cache/theme?token=LaoKKn3SFd8UdmK-k6S_fJmriknc1Sb-mXhxoQQUxo8" class="admin-menu-destination">Theme registry</a></li></ul></li><li class="expandable"><span>Development</span>\\012<ul class="dropdown"><li><a href="/devel/cache/clear" class="admin-menu-destination">Clear cache</a></li><li><a href="/devel/settings">Devel settings</a></li><li><a href="/devel/entity/info">Entity info</a></li><li><a href="/devel/php">Execute PHP Code</a></li><li><a href="/devel/field/info">Field info</a></li><li><a href="/devel/reference">Function reference</a></li><li><a href="/devel/elements">Hook_elements()</a></li><li><a href="/devel/menu/item?path=admin/modules">Menu item</a></li><li><a href="/devel/phpinfo">PHPinfo()</a></li><li><a href="/devel/menu/reset" class="admin-menu-destination">Rebuild menus</a></li><li><a href="/devel/reinstall" class="admin-menu-destination">Reinstall modules</a></li><li><a href="/devel/run-cron">Run cron</a></li><li><a href="/devel/session">Session viewer</a></li><li><a href="/devel/theme/registry">Theme registry</a></li><li><a href="/devel/variable" class="admin-menu-destination">Variable editor</a></li></ul></li><li><a href="/admin/reports/status/run-cron">Run cron</a></li><li><a href="/update.php">Run updates</a></li><li><a href="/admin_menu/toggle-modules?token=W7ilzdlcaJdJdtOOa6MSotQliD9BtfsjwnXPAI3wDGU" class="admin-menu-destination">Disable developer modules</a></li><li class="expandable"><a href="http://drupal.org">Drupal.org</a>\\012<ul class="dropdown"><li><a href="http://drupal.org/project/issues/drupal?version=7.x">Block issue queue</a></li><li><a href="http://drupal.org/project/issues/admin_menu?version=7.x">Administration Development tools issue queue</a></li><li><a href="http://drupal.org/project/issues/devel?version=7.x">Devel generate issue queue</a></li><li><a href="http://drupal.org/project/issues/l10n_update?version=7.x">Localization update issue queue</a></li><li><a href="http://drupal.org/project/issues/module_filter?version=7.x">Module filter issue queue</a></li></ul></li></ul></li></ul>\\012<ul id="admin-menu-menu" class="dropdown"><li class="admin-menu-toolbar-category expandable"><a href="/admin/content">Content</a>\\012<ul class="dropdown"><li><a href="/node/add">Add content</a></li></ul></li><li class="admin-menu-toolbar-category expandable"><a href="/admin/structure">Structure</a>\\012<ul class="dropdown"><li class="expandable"><a href="/admin/structure/block">Blocks</a>\\012<ul class="dropdown"><li><a href="/admin/structure/block/add">Add block</a></li></ul></li><li class="expandable"><a href="/admin/structure/types">Content types</a>\\012<ul class="dropdown"><li><a href="/admin/structure/types/add">Add content type</a></li></ul></li></ul></li><li class="admin-menu-toolbar-category expandable"><a href="/admin/appearance">Appearance</a>\\012<ul class="dropdown"><li class="expandable"><a href="/admin/appearance/settings">Settings</a>\\012<ul class="dropdown"><li><a href="/admin/appearance/settings/bartik">Bartik</a></li></ul></li></ul></li><li class="admin-menu-toolbar-category expandable"><a href="/admin/people">People</a>\\012<ul class="dropdown"><li><a href="/admin/people/create">Add user</a></li><li class="expandable"><a href="/admin/people/permissions">Permissions</a>\\012<ul class="dropdown"><li><a href="/admin/people/permissions/roles">Roles</a></li></ul></li></ul></li><li class="admin-menu-toolbar-category expandable"><a href="/admin/modules" class="active">Modules</a>\\012<ul class="dropdown"><li><a href="/admin/modules/uninstall">Uninstall</a></li></ul></li><li class="admin-menu-toolbar-category expandable"><a href="/admin/config">Configuration</a>\\012<ul class="dropdown"><li class="expandable"><a href="/admin/config/administration">Administration</a>\\012<ul class="dropdown"><li><a href="/admin/config/administration/admin_menu">Administration menu</a></li></ul></li><li class="expandable"><a href="/admin/config/content">Content authoring</a>\\012<ul class="dropdown"><li class="expandable"><a href="/admin/config/content/formats">Text formats</a>\\012<ul class="dropdown"><li><a href="/admin/config/content/formats/add">Add text format</a></li><li><a href="/admin/config/content/formats/plain_text">Plain text</a></li></ul></li></ul></li><li class="expandable"><a href="/admin/config/development">Development</a>\\012<ul class="dropdown"><li><a href="/admin/config/development/performance">Performance</a></li><li><a href="/admin/config/development/logging">Logging and errors</a></li><li><a href="/admin/config/development/maintenance">Maintenance mode</a></li><li><a href="/admin/config/development/devel">Devel settings</a></li><li><a href="/admin/config/development/generate/content">Generate content</a></li><li><a href="/admin/config/development/generate/menu">Generate menus</a></li><li><a href="/admin/config/development/generate/user">Generate users</a></li></ul></li><li class="expandable"><a href="/admin/config/media">Media</a>\\012<ul class="dropdown"><li><a href="/admin/config/media/file-system">File system</a></li><li><a href="/admin/config/media/image-toolkit">Image toolkit</a></li></ul></li><li class="expandable"><a href="/admin/config/people">People</a>\\012<ul class="dropdown"><li><a href="/admin/config/people/accounts">Account settings</a></li><li><a href="/admin/config/people/ip-blocking">IP address blocking</a></li></ul></li><li class="expandable"><a href="/admin/config/regional">Regional and language</a>\\012<ul class="dropdown"><li><a href="/admin/config/regional/settings">Regional settings</a></li><li class="expandable"><a href="/admin/config/regional/date-time">Date and time</a>\\012<ul class="dropdown"><li class="expandable"><a href="/admin/config/regional/date-time/formats">Formats</a>\\012<ul class="dropdown"><li><a href="/admin/config/regional/date-time/formats/add">Add format</a></li></ul></li><li><a href="/admin/config/regional/date-time/locale">Localize</a></li></ul></li><li class="expandable"><a href="/admin/config/regional/language">Languages</a>\\012<ul class="dropdown"><li><a href="/admin/config/regional/language/add">Add language</a></li><li><a href="/admin/config/regional/language/configure">Detection and selection</a></li><li><a href="/admin/config/regional/language/update">Translation updates</a></li></ul></li><li class="expandable"><a href="/admin/config/regional/translate">Translate interface</a>\\012<ul class="dropdown"><li><a href="/admin/config/regional/translate/translate">Translate</a></li><li><a href="/admin/config/regional/translate/import">Import</a></li><li><a href="/admin/config/regional/translate/update">Update</a></li><li><a href="/admin/config/regional/translate/export">Export</a></li></ul></li></ul></li><li class="expandable"><a href="/admin/config/search">Search and metadata</a>\\012<ul class="dropdown"><li><a href="/admin/config/search/clean-urls">Clean URLs</a></li></ul></li><li class="expandable"><a href="/admin/config/system">System</a>\\012<ul class="dropdown"><li><a href="/admin/config/system/site-information">Site information</a></li><li><a href="/admin/config/system/actions">Actions</a></li><li><a href="/admin/config/system/cron">Cron</a></li></ul></li><li class="expandable"><a href="/admin/config/user-interface">User interface</a>\\012<ul class="dropdown"><li><a href="/admin/config/user-interface/modulefilter">Module filter</a></li></ul></li><li class="expandable"><a href="/admin/config/services">Web services</a>\\012<ul class="dropdown"><li><a href="/admin/config/services/rss-publishing">RSS publishing</a></li></ul></li></ul></li><li class="admin-menu-toolbar-category expandable"><a href="/admin/reports">Reports</a>\\012<ul class="dropdown"><li><a href="/admin/reports/status">Status report</a></li><li><a href="/admin/reports/dblog">Recent log messages</a></li><li><a href="/admin/reports/access-denied">Top &#039;access denied&#039; errors</a></li><li><a href="/admin/reports/page-not-found">Top &#039;page not found&#039; errors</a></li></ul></li></ul>\\012<ul id="admin-menu-account" class="dropdown"><li class="admin-menu-action"><a href="/user/logout">Log out</a></li><li class="admin-menu-action admin-menu-account"><a href="/user/1">Hello <strong>admin</strong></a></li></ul></div></div>	0	1418195166	0
links:main-menu:page:admin/modules:en:1:1	a:4:{s:9:"min_depth";i:1;s:9:"max_depth";i:1;s:8:"expanded";a:1:{i:0;i:0;}s:12:"active_trail";a:1:{i:0;i:0;}}	0	1418195166	1
links:main-menu:tree-data:en:9ec01ec58bf82a695e4acd636af283e0585fe8cd8a6e54eb140188a3e284ab1c	a:2:{s:4:"tree";a:0:{}s:10:"node_links";a:0:{}}	0	1418195166	1
links:user-menu:page:admin/modules:en:1:1	a:4:{s:9:"min_depth";i:1;s:9:"max_depth";i:1;s:8:"expanded";a:1:{i:0;i:0;}s:12:"active_trail";a:1:{i:0;i:0;}}	0	1418195166	1
links:user-menu:tree-data:en:9ec01ec58bf82a695e4acd636af283e0585fe8cd8a6e54eb140188a3e284ab1c	a:2:{s:4:"tree";a:2:{i:2;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:9:"user-menu";s:4:"mlid";s:1:"2";s:4:"plid";s:1:"0";s:9:"link_path";s:4:"user";s:11:"router_path";s:4:"user";s:10:"link_title";s:12:"User account";s:7:"options";s:22:"a:1:{s:5:"alter";b:1;}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-10";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:1:"2";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:1:"1";s:16:"access_arguments";s:6:"a:0:{}";s:13:"page_callback";s:9:"user_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:4:"user";s:5:"title";s:12:"User account";s:14:"title_callback";s:15:"user_menu_title";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:12;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:9:"user-menu";s:4:"mlid";s:2:"12";s:4:"plid";s:1:"0";s:9:"link_path";s:11:"user/logout";s:11:"router_path";s:11:"user/logout";s:10:"link_title";s:7:"Log out";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"10";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:2:"12";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:17:"user_is_logged_in";s:16:"access_arguments";s:6:"a:0:{}";s:13:"page_callback";s:11:"user_logout";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:11:"user/logout";s:5:"title";s:7:"Log out";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}s:10:"node_links";a:0:{}}	0	1418195166	1
local_tasks:admin/structure/block/manage/%/%	a:2:{i:0;a:23:{s:4:"path";s:32:"admin/structure/block/manage/%/%";s:14:"load_functions";s:18:"a:2:{i:4;N;i:5;N;}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer blocks";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:55:"a:3:{i:0;s:21:"block_admin_configure";i:1;i:4;i:2;i:5;}";s:17:"delivery_callback";s:0:"";s:3:"fit";s:2:"60";s:12:"number_parts";s:1:"6";s:7:"context";s:1:"0";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:32:"admin/structure/block/manage/%/%";s:5:"title";s:15:"Configure block";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:8:"position";s:0:"";s:6:"weight";s:1:"0";s:12:"include_file";s:29:"modules/block/block.admin.inc";}i:1;a:23:{s:4:"path";s:39:"admin/structure/block/manage/%/%/delete";s:14:"load_functions";s:18:"a:2:{i:4;N;i:5;N;}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer blocks";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:59:"a:3:{i:0;s:25:"block_custom_block_delete";i:1;i:4;i:2;i:5;}";s:17:"delivery_callback";s:0:"";s:3:"fit";s:3:"121";s:12:"number_parts";s:1:"7";s:7:"context";s:1:"0";s:10:"tab_parent";s:32:"admin/structure/block/manage/%/%";s:8:"tab_root";s:32:"admin/structure/block/manage/%/%";s:5:"title";s:12:"Delete block";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:8:"position";s:0:"";s:6:"weight";s:1:"0";s:12:"include_file";s:29:"modules/block/block.admin.inc";}}	0	1418195170	1
links:navigation:page:admin/structure/block/manage/system/management/configure:en:1:0	a:4:{s:9:"min_depth";i:1;s:9:"max_depth";N;s:8:"expanded";a:1:{i:0;i:0;}s:12:"active_trail";a:1:{i:0;i:0;}}	0	1418195170	1
links:management:page:admin/structure/block/manage/system/management/configure:en:1:0	a:4:{s:9:"min_depth";i:1;s:9:"max_depth";N;s:8:"expanded";a:6:{i:0;i:0;i:1;s:1:"1";i:18;s:2:"18";i:21;s:2:"21";i:101;s:3:"101";i:110;s:3:"110";}s:12:"active_trail";a:6:{i:0;i:0;i:1;s:1:"1";i:18;s:2:"18";i:21;s:2:"21";i:101;s:3:"101";i:110;s:3:"110";}}	0	1418195170	1
links:management:tree-data:en:f5c5f6d41ec7e78592fa71acb72cecc96067fc550f36b11aace554306c3e5eb7	a:2:{s:4:"tree";a:1:{i:1;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:1:"1";s:4:"plid";s:1:"0";s:9:"link_path";s:5:"admin";s:11:"router_path";s:5:"admin";s:10:"link_title";s:14:"Administration";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"9";s:5:"depth";s:1:"1";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"0";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:5:"admin";s:5:"title";s:14:"Administration";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:1;}s:5:"below";a:9:{i:6;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:1:"6";s:4:"plid";s:1:"1";s:9:"link_path";s:16:"admin/appearance";s:11:"router_path";s:16:"admin/appearance";s:10:"link_title";s:10:"Appearance";s:7:"options";s:83:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:33:"Select and configure your themes.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-6";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"6";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer themes";}";s:13:"page_callback";s:18:"system_themes_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:16:"admin/appearance";s:5:"title";s:10:"Appearance";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:33:"Select and configure your themes.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:7;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:1:"7";s:4:"plid";s:1:"1";s:9:"link_path";s:12:"admin/config";s:11:"router_path";s:12:"admin/config";s:10:"link_title";s:13:"Configuration";s:7:"options";s:70:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:20:"Administer settings.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"7";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:24:"system_admin_config_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:12:"admin/config";s:5:"title";s:13:"Configuration";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:20:"Administer settings.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:8;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:1:"8";s:4:"plid";s:1:"1";s:9:"link_path";s:13:"admin/content";s:11:"router_path";s:13:"admin/content";s:10:"link_title";s:7:"Content";s:7:"options";s:74:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:24:"Find and manage content.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-10";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:1:"8";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:41:"a:1:{i:0;s:23:"access content overview";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:36:"a:1:{i:0;s:18:"node_admin_content";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:13:"admin/content";s:5:"title";s:7:"Content";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:24:"Find and manage content.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:10;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"10";s:4:"plid";s:1:"1";s:9:"link_path";s:11:"admin/index";s:11:"router_path";s:11:"admin/index";s:10:"link_title";s:5:"Index";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-18";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"10";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:18:"system_admin_index";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:5:"admin";s:8:"tab_root";s:5:"admin";s:5:"title";s:5:"Index";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:13;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"13";s:4:"plid";s:1:"1";s:9:"link_path";s:13:"admin/modules";s:11:"router_path";s:13:"admin/modules";s:10:"link_title";s:7:"Modules";s:7:"options";s:76:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:26:"Extend site functionality.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-2";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"13";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:36:"a:1:{i:0;s:18:"administer modules";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:32:"a:1:{i:0;s:14:"system_modules";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:13:"admin/modules";s:5:"title";s:7:"Modules";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:26:"Extend site functionality.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:15;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"15";s:4:"plid";s:1:"1";s:9:"link_path";s:12:"admin/people";s:11:"router_path";s:12:"admin/people";s:10:"link_title";s:6:"People";s:7:"options";s:95:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:45:"Manage user accounts, roles, and permissions.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-4";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"15";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:34:"a:1:{i:0;s:16:"administer users";}";s:13:"page_callback";s:10:"user_admin";s:14:"page_arguments";s:21:"a:1:{i:0;s:4:"list";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:12:"admin/people";s:5:"title";s:6:"People";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:45:"Manage user accounts, roles, and permissions.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:16;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"16";s:4:"plid";s:1:"1";s:9:"link_path";s:13:"admin/reports";s:11:"router_path";s:13:"admin/reports";s:10:"link_title";s:7:"Reports";s:7:"options";s:84:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:34:"View reports, updates, and errors.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"5";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"16";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:37:"a:1:{i:0;s:19:"access site reports";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:13:"admin/reports";s:5:"title";s:7:"Reports";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:34:"View reports, updates, and errors.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:18;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"18";s:4:"plid";s:1:"1";s:9:"link_path";s:15:"admin/structure";s:11:"router_path";s:15:"admin/structure";s:10:"link_title";s:9:"Structure";s:7:"options";s:95:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:45:"Administer blocks, content types, menus, etc.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:2:"-8";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:15:"admin/structure";s:5:"title";s:9:"Structure";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:45:"Administer blocks, content types, menus, etc.";s:15:"in_active_trail";b:1;}s:5:"below";a:2:{i:21;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"21";s:4:"plid";s:2:"18";s:9:"link_path";s:21:"admin/structure/block";s:11:"router_path";s:21:"admin/structure/block";s:10:"link_title";s:6:"Blocks";s:7:"options";s:129:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:79:"Configure what block content appears in your site's sidebars and other regions.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer blocks";}";s:13:"page_callback";s:19:"block_admin_display";s:14:"page_arguments";s:23:"a:1:{i:0;s:6:"bartik";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:21:"admin/structure/block";s:5:"title";s:6:"Blocks";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:79:"Configure what block content appears in your site's sidebars and other regions.";s:15:"in_active_trail";b:1;}s:5:"below";a:6:{i:53;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"53";s:4:"plid";s:2:"21";s:9:"link_path";s:25:"admin/structure/block/add";s:11:"router_path";s:25:"admin/structure/block/add";s:10:"link_title";s:9:"Add block";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:2:"53";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer blocks";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:38:"a:1:{i:0;s:20:"block_add_block_form";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:21:"admin/structure/block";s:8:"tab_root";s:21:"admin/structure/block";s:5:"title";s:9:"Add block";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"388";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:82;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"82";s:4:"plid";s:2:"21";s:9:"link_path";s:33:"admin/structure/block/list/bartik";s:11:"router_path";s:33:"admin/structure/block/list/bartik";s:10:"link_title";s:6:"Bartik";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-10";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:2:"82";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:20:"_block_themes_access";s:16:"access_arguments";s:2442:"a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:25:"themes/bartik/bartik.info";s:4:"name";s:6:"bartik";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:6:"Bartik";s:11:"description";s:48:"A flexible, recolorable theme with many regions.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:28:"themes/bartik/css/layout.css";s:13:"css/style.css";s:27:"themes/bartik/css/style.css";s:14:"css/colors.css";s:28:"themes/bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:27:"themes/bartik/css/print.css";}}s:7:"regions";a:17:{s:6:"header";s:6:"Header";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:11:"highlighted";s:11:"Highlighted";s:8:"featured";s:8:"Featured";s:7:"content";s:7:"Content";s:13:"sidebar_first";s:13:"Sidebar first";s:14:"sidebar_second";s:14:"Sidebar second";s:14:"triptych_first";s:14:"Triptych first";s:15:"triptych_middle";s:15:"Triptych middle";s:13:"triptych_last";s:13:"Triptych last";s:18:"footer_firstcolumn";s:19:"Footer first column";s:19:"footer_secondcolumn";s:20:"Footer second column";s:18:"footer_thirdcolumn";s:19:"Footer third column";s:19:"footer_fourthcolumn";s:20:"Footer fourth column";s:6:"footer";s:6:"Footer";}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"0";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:28:"themes/bartik/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:28:"themes/bartik/css/layout.css";s:13:"css/style.css";s:27:"themes/bartik/css/style.css";s:14:"css/colors.css";s:28:"themes/bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:27:"themes/bartik/css/print.css";}}s:6:"engine";s:11:"phptemplate";}}";s:13:"page_callback";s:19:"block_admin_display";s:14:"page_arguments";s:23:"a:1:{i:0;s:6:"bartik";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:21:"admin/structure/block";s:8:"tab_root";s:21:"admin/structure/block";s:5:"title";s:6:"Bartik";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:86;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"86";s:4:"plid";s:2:"21";s:9:"link_path";s:34:"admin/structure/block/list/garland";s:11:"router_path";s:34:"admin/structure/block/list/garland";s:10:"link_title";s:7:"Garland";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:2:"86";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:20:"_block_themes_access";s:16:"access_arguments";s:1863:"a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:27:"themes/garland/garland.info";s:4:"name";s:7:"garland";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:7:"Garland";s:11:"description";s:111:"A multi-column theme which can be configured to modify colors and switch between fixed and fluid width layouts.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:8:"settings";a:1:{s:13:"garland_width";s:5:"fluid";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:29:"themes/garland/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:6:"engine";s:11:"phptemplate";}}";s:13:"page_callback";s:19:"block_admin_display";s:14:"page_arguments";s:24:"a:1:{i:0;s:7:"garland";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:21:"admin/structure/block";s:8:"tab_root";s:21:"admin/structure/block";s:5:"title";s:7:"Garland";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:90;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"90";s:4:"plid";s:2:"21";s:9:"link_path";s:32:"admin/structure/block/list/seven";s:11:"router_path";s:32:"admin/structure/block/list/seven";s:10:"link_title";s:5:"Seven";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:2:"90";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:20:"_block_themes_access";s:16:"access_arguments";s:1664:"a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:23:"themes/seven/seven.info";s:4:"name";s:5:"seven";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:5:"Seven";s:11:"description";s:65:"A simple one-column, tableless, fluid width administration theme.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:9:"reset.css";s:22:"themes/seven/reset.css";s:9:"style.css";s:22:"themes/seven/style.css";}}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"1";}s:7:"regions";a:5:{s:7:"content";s:7:"Content";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:13:"sidebar_first";s:13:"First sidebar";}s:14:"regions_hidden";a:3:{i:0;s:13:"sidebar_first";i:1;s:8:"page_top";i:2;s:11:"page_bottom";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/seven/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:9:"reset.css";s:22:"themes/seven/reset.css";s:9:"style.css";s:22:"themes/seven/style.css";}}s:6:"engine";s:11:"phptemplate";}}";s:13:"page_callback";s:19:"block_admin_display";s:14:"page_arguments";s:22:"a:1:{i:0;s:5:"seven";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:21:"admin/structure/block";s:8:"tab_root";s:21:"admin/structure/block";s:5:"title";s:5:"Seven";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:91;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"91";s:4:"plid";s:2:"21";s:9:"link_path";s:32:"admin/structure/block/list/stark";s:11:"router_path";s:32:"admin/structure/block/list/stark";s:10:"link_title";s:5:"Stark";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:2:"91";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:20:"_block_themes_access";s:16:"access_arguments";s:1766:"a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:23:"themes/stark/stark.info";s:4:"name";s:5:"stark";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:17:{s:4:"name";s:5:"Stark";s:11:"description";s:208:"This theme demonstrates Drupal's default HTML markup and CSS styles. To learn how to build your own theme and override Drupal's default code, see the <a href="http://drupal.org/theme-guide">Theming Guide</a>.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"layout.css";s:23:"themes/stark/layout.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/stark/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"layout.css";s:23:"themes/stark/layout.css";}}s:6:"engine";s:11:"phptemplate";}}";s:13:"page_callback";s:19:"block_admin_display";s:14:"page_arguments";s:22:"a:1:{i:0;s:5:"stark";}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:21:"admin/structure/block";s:8:"tab_root";s:21:"admin/structure/block";s:5:"title";s:5:"Stark";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}i:101;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"101";s:4:"plid";s:2:"21";s:9:"link_path";s:32:"admin/structure/block/manage/%/%";s:11:"router_path";s:32:"admin/structure/block/manage/%/%";s:10:"link_title";s:15:"Configure block";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"4";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:3:"101";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:18:"a:2:{i:4;N;i:5;N;}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer blocks";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:55:"a:3:{i:0;s:21:"block_admin_configure";i:1;i:4;i:2;i:5;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:32:"admin/structure/block/manage/%/%";s:5:"title";s:15:"Configure block";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:0:"";s:15:"in_active_trail";b:1;}s:5:"below";a:2:{i:110;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"110";s:4:"plid";s:3:"101";s:9:"link_path";s:42:"admin/structure/block/manage/%/%/configure";s:11:"router_path";s:42:"admin/structure/block/manage/%/%/configure";s:10:"link_title";s:15:"Configure block";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:3:"101";s:2:"p5";s:3:"110";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:18:"a:2:{i:4;N;i:5;N;}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer blocks";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:55:"a:3:{i:0;s:21:"block_admin_configure";i:1;i:4;i:2;i:5;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:32:"admin/structure/block/manage/%/%";s:8:"tab_root";s:32:"admin/structure/block/manage/%/%";s:5:"title";s:15:"Configure block";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:0:"";s:15:"in_active_trail";b:1;}s:5:"below";a:0:{}}i:111;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:3:"111";s:4:"plid";s:3:"101";s:9:"link_path";s:39:"admin/structure/block/manage/%/%/delete";s:11:"router_path";s:39:"admin/structure/block/manage/%/%/delete";s:10:"link_title";s:12:"Delete block";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"5";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"21";s:2:"p4";s:3:"101";s:2:"p5";s:3:"111";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:18:"a:2:{i:4;N;i:5;N;}";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:35:"a:1:{i:0;s:17:"administer blocks";}";s:13:"page_callback";s:15:"drupal_get_form";s:14:"page_arguments";s:59:"a:3:{i:0;s:25:"block_custom_block_delete";i:1;i:4;i:2;i:5;}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:32:"admin/structure/block/manage/%/%";s:8:"tab_root";s:32:"admin/structure/block/manage/%/%";s:5:"title";s:12:"Delete block";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"132";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}}}i:25;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"25";s:4:"plid";s:2:"18";s:9:"link_path";s:21:"admin/structure/types";s:11:"router_path";s:21:"admin/structure/types";s:10:"link_title";s:13:"Content types";s:7:"options";s:142:"a:1:{s:10:"attributes";a:1:{s:5:"title";s:92:"Manage content types, including default status, front page promotion, comment settings, etc.";}}";s:6:"module";s:6:"system";s:6:"hidden";s:1:"0";s:8:"external";s:1:"0";s:12:"has_children";s:1:"1";s:8:"expanded";s:1:"0";s:6:"weight";s:1:"0";s:5:"depth";s:1:"3";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"18";s:2:"p3";s:2:"25";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:42:"a:1:{i:0;s:24:"administer content types";}";s:13:"page_callback";s:19:"node_overview_types";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:0:"";s:8:"tab_root";s:21:"admin/structure/types";s:5:"title";s:13:"Content types";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:1:"6";s:11:"description";s:92:"Manage content types, including default status, front page promotion, comment settings, etc.";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}i:19;a:2:{s:4:"link";a:42:{s:9:"menu_name";s:10:"management";s:4:"mlid";s:2:"19";s:4:"plid";s:1:"1";s:9:"link_path";s:11:"admin/tasks";s:11:"router_path";s:11:"admin/tasks";s:10:"link_title";s:5:"Tasks";s:7:"options";s:6:"a:0:{}";s:6:"module";s:6:"system";s:6:"hidden";s:2:"-1";s:8:"external";s:1:"0";s:12:"has_children";s:1:"0";s:8:"expanded";s:1:"0";s:6:"weight";s:3:"-20";s:5:"depth";s:1:"2";s:10:"customized";s:1:"0";s:2:"p1";s:1:"1";s:2:"p2";s:2:"19";s:2:"p3";s:1:"0";s:2:"p4";s:1:"0";s:2:"p5";s:1:"0";s:2:"p6";s:1:"0";s:2:"p7";s:1:"0";s:2:"p8";s:1:"0";s:2:"p9";s:1:"0";s:7:"updated";s:1:"0";s:14:"load_functions";s:0:"";s:16:"to_arg_functions";s:0:"";s:15:"access_callback";s:11:"user_access";s:16:"access_arguments";s:45:"a:1:{i:0;s:27:"access administration pages";}";s:13:"page_callback";s:28:"system_admin_menu_block_page";s:14:"page_arguments";s:6:"a:0:{}";s:17:"delivery_callback";s:0:"";s:10:"tab_parent";s:5:"admin";s:8:"tab_root";s:5:"admin";s:5:"title";s:5:"Tasks";s:14:"title_callback";s:1:"t";s:15:"title_arguments";s:0:"";s:14:"theme_callback";s:0:"";s:15:"theme_arguments";s:6:"a:0:{}";s:4:"type";s:3:"140";s:11:"description";s:0:"";s:15:"in_active_trail";b:0;}s:5:"below";a:0:{}}}}}s:10:"node_links";a:0:{}}	0	1418195170	1
links:main-menu:page:admin/structure/block/manage/system/management/configure:en:1:1	a:4:{s:9:"min_depth";i:1;s:9:"max_depth";i:1;s:8:"expanded";a:1:{i:0;i:0;}s:12:"active_trail";a:1:{i:0;i:0;}}	0	1418195170	1
\.


--
-- Data for Name: cache_page; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY cache_page (cid, data, expire, created, serialized) FROM stdin;
http://pg.vekev.ru/js/admin_menu/cache/232bd76554e84a4b958ccf1035c673e1	a:5:{s:4:"path";s:52:"js/admin_menu/cache/232bd76554e84a4b958ccf1035c673e1";s:4:"body";s:2041:"\\037\\213\\010\\000\\000\\000\\000\\000\\002\\003\\265Y\\335W\\333:\\022\\177\\337\\277B'{\\316\\236\\335\\007\\327@Zh\\357\\005zR \\224\\257\\022\\010\\024\\270/9\\302\\236$\\272\\310\\226\\257$\\033\\350_\\277#\\311N\\234\\220\\304NB_b\\311\\362\\374f4\\232\\321|d7d\\031a\\341^\\203\\206\\021\\213\\275\\010\\342\\264A\\002N\\225*\\277\\362\\024\\323\\340%\\003/\\203'\\310<\\2316\\366w\\337\\022z\\317\\222&\\011\\310\\306\\376\\277vS>\\275\\310\\002\\021\\217\\240C)\\222P<\\307\\210\\303\\331\\014~\\346cR\\232k!\\370#\\225^@5\\014\\204|%\\360\\222\\3208\\244\\217\\034\\020\\202\\222\\241\\204\\376^\\303\\307\\261\\302\\367\\373\\337E\\004\\273\\276\\035\\356\\372\\324\\2113\\213s\\211\\3242\\363Y\\034\\302Kc\\377\\304<\\014\\345\\256o>\\032\\2138\\233\\255\\245\\355\\031A\\375>O\\325\\020\\305\\014\\206\\360U\\213'\\210\\367\\302\\346\\260\\253~\\3666\\002O\\374\\212\\257\\216\\330\\316Q\\306\\332q\\272\\261\\365\\345Sz$\\341\\342\\347\\343\\320;\\351\\365\\356\\356\\317\\037fi>\\004\\245YL5C\\355\\355\\267\\015:\\241\\034wc8\\250\\2456\\367F\\300\\322\\353\\\\\\326O7\\301\\217\\253\\353\\326\\361\\016\\350\\343\\236\\272\\356@\\266\\025\\014o~|\\354o\\335tN\\273\\033YG\\236$\\033\\364\\354\\352\\352[\\265\\254-\\363\\236)-\\355\\234\\230\\017\\312\\032\\255\\226N\\302\\300\\220\\277\\346\\26257\\340\\370\\376\\352H\\321\\326}S\\016E\\037\\332\\342!\\332\\226\\201\\276\\015>\\236\\037\\312\\313\\217\\341Y\\324\\034\\034\\310\\237\\361U\\245l\\007f\\231\\024\\014\\226\\023\\013)A\\253\\\\\\250V \\277\\265O~\\\\&\\341\\316\\363\\341\\366\\006\\273\\331\\366\\372\\027\\2074\\034<|<\\373\\365\\327Es\\343Q\\352\\2074\\275\\336\\334:\\252\\026\\252\\333%h\\\\\\344\\224f\\264\\033H\\226\\350\\345\\004+\\235c\\362\\371i(\\036\\370\\345m\\012,;\\347\\275\\354A\\336\\266{\\017G\\177A(\\262\\217Y\\230Q%Z\\315fv\\242[\\225b],}pe\\353\\247}v7\\340\\237\\333/\\255\\347\\273\\376\\326\\247a\\363\\313N3J\\372\\247\\007Ol\\373\\350G\\377\\331;\\361\\2167\\343^z\\237\\336VJ\\322\\241\\003\\260\\032\\002\\256`9\\221\\364\\020\\242B\\244s*\\316\\316\\342f\\267\\035~\\276\\015\\2433\\357i\\273\\333\\353\\237F\\222=\\305\\301f\\367\\321\\213\\356\\207/\\342\\352\\352\\366E|\\256\\024\\351\\306\\340\\3160$?\\345\\213\\357\\016{7\\035B\\006\\\\$\\010\\253\\363\\333\\252\\2163\\207\\206\\312\\317U\\315\\201\\312\\032\\346\\216_\\271+c\\216\\332\\034&\\0326\\022\\015T\\303IF\\212\\371B"\\024\\236\\351W\\2749\\373\\242\\261\\177d'\\304L\\026\\022%\\303\\004?~\\201 \\325@:\\337;\\344@\\204\\213e\\3533\\340a\\316\\245m\\306\\325Lp\\014\\022\\342\\000\\365\\335N\\343\\300^C\\243w\\213\\367\\304\\301\\034\\012*\\342\\273\\020O\\275b\\372\\337\\377-\\244\\262V\\207\\2012\\372\\232P=\\334s\\021%\\022a\\312A9?"f\\265J1n\\217\\250\\0243\\250\\303R\\002\\036T\\245\\021\\\\\\303c\\312PmfEU\\350\\215\\305Jc\\224\\251\\201\\231\\177I\\362m.\\306Mc/\\220\\226.\\215\\211\\031UX\\243R\\226K\\327\\015H\\306\\340\\031\\344B\\032\\353\\347\\243\\3101\\337?g\\220fT2\\353\\234U\\233\\376\\231\\177H dZ\\310\\331N\\377&\\263\\220\\220\\010\\251\\225\\217\\352\\322\\251\\252\\257\\2134\\0111\\347\\371`\\035\\306|\\352\\346\\252\\372\\372\\323b0\\340\\340\\345\\007\\223\\337}w;\\214\\377\\012y@O\\303\\323P_^\\322\\355\\213\\256\\320W\\234\\035~\\371\\246\\373\\352\\357\\347\\370\\276\\323:i>\\037\\036W_\\307\\207LY5\\204\\356\\026\\0039\\313\\010\\026&NC\\255\\223?|?\\224iB\\371\\007!\\007\\010:\\032\\327\\314m\\336`\\370\\211\\024\\177C\\240}\\246T\\012*_\\371\\232\\2014F\\264\\267\\363\\001\\363\\273o\\\\\\004O\\304~@\\376I!\\235s\\033Tb\\227\\022\\250\\011\\374\\251\\334\\247t\\317\\023\\223\\311\\252w`m\\265>\\311\\325]\\332\\003\\210\\001\\371\\302;\\360\\340\\233\\033\\030\\232\\255\\301Mr:\\027\\001\\345\\354\\227\\333\\235\\373\\340\\035\\3309\\363\\351\\365\\031\\327 '\\031^\\330%\\342\\226f\\263\\032{\\337\\344hV-2Q\\346T\\325"5k\\017\\347\\346X\\267h<f\\214\\271nP7C\\2171\\376!Dhl'$\\301\\230x~>\\261\\252\\210h\\226i\\240S\\211K\\335b\\270P\\314\\032\\305\\317\\030\\324\\1774\\276\\225\\273\\330r\\005\\3124\\310X\\037v\\272Dv5\\027W\\277&&\\026\\347\\207C\\354tU\\031-\\361\\2333\\263\\230\\213\\255r\\375#4e6\\225\\324\\2466\\255\\321x\\355C\\034\\303\\226R\\301n)\\011\\254\\257\\246\\031P>nO3c\\032\\366\\371\\273u\\224\\200H\\314\\373\\216}.'\\275\\243\\365\\003\\011\\310\\311\\035o\\252&S\\217:\\372\\314a04F\\314\\2460\\312\\2103\\232\\254$S\\011\\314\\227\\302f\\226\\327b"\\350\\376\\036u\\026y\\354\\010\\007\\363\\351\\014\\212\\233y\\311\\275\\344`~\\032\\027\\231\\346\\376m1\\374=\\227\\036zg\\237\\015\\254\\347\\3433u\\201ym\\207q\\250n2\\012\\367\\323\\341\\1779\\325\\314\\204,%\\032\\025\\215\\225e\\257\\306\\234\\335t\\330"4\\325C!\\321m\\337KG9\\007\\277/dDMeu\\003/\\232\\344\\263\\225T4\\2058\\276\\211\\365\\030yQ\\232<\\017'\\341\\024um@\\320[\\315\\330\\002\\326\\365\\257\\032\\252\\010\\307\\351`c\\262\\007\\260\\202\\026J`\\346n\\260\\233\\260q\\2413\\236\\324\\321B\\031\\207c\\351\\200Go\\362<;pM\\027)\\205T\\313BE\\250?\\324\\256\\023\\351b<1\\265\\302\\322r\\331q\\315\\346\\304\\\\\\220"?\\036\\333\\374q\\2211\\277I\\273\\226Dt\\3769\\202[TiW\\203\\231\\200S\\0023S\\265\\266\\237GX\\263R\\323\\213\\300\\307J\\346f\\001|\\314\\303\\301S\\257JCd\\2721\\230\\231\\273I\\235\\315:\\004\\026\\321\\001\\330+\\374\\211\\341\\021\\234\\230)\\311\\247k\\357r\\235\\320?\\001\\341\\323 \\020\\251m\\004\\265\\334h)\\263\\313AX\\342\\331\\004\\326\\272\\324I\\207\\340E%A)R\\274\\\\{\\277\\246\\277!b\\312MC\\306\\215\\254\\307r\\032\\017R\\324\\353J\\012(0K\\231\\340\\010|\\226\\016V\\020\\3277u\\243\\247Y\\204\\237\\036\\032\\0337B\\233\\351{\\305\\234\\267\\214\\306\\341\\247\\275F\\344\\231\\217;\\016B\\323\\361gash>.7\\2256\\214*nx7[\\361\\013\\353@\\354|\\264\\2462\\012\\300\\261\\016\\312\\006X{\\357#\\230 O\\325\\214u\\200\\006\\327\\2775&\\242\\200\\273\\331j\\270\\256_\\201\\011\\010\\226'\\212\\227{\\030\\352\\375\\264\\253s\\360\\022\\037 &\\372\\311>\\015\\326\\364\\310\\021\\366L.K)e\\014\\305"\\323\\23747\\261y\\256\\010R\\250\\366\\326>W\\004A5[I\\216^&%Y;\\357RX\\221\\006CS\\321\\232\\2475\\245\\0104EQW\\213\\205\\016\\317\\376\\007\\023{\\251\\344\\312\\375\\323\\022\\223\\333\\353\\363\\365M\\251\\010\\257\\335Qd]^@K\\352\\333?\\357\\315\\237\\011\\346Fr\\035uf\\255q\\364\\246\\316I\\345`\\324z\\236\\015\\210\\272(bk\\222\\272~\\367\\301D\\257{E\\345\\230l\\310\\033\\271\\023\\032\\2342m\\301\\265\\334k\\0222/Q]\\303q\\252\\377\\270\\376\\321\\202\\314X`J\\367;x$\\305lE\\033t\\304\\276T\\312K\\322G\\316\\324\\320\\346\\031\\327\\335.\\031\\317\\177ww \\377w\\303\\344\\010v\\260\\334^&\\377\\0331mI\\363$\\356\\365B\\003+(C\\314\\245\\314\\246!0\\305+\\216\\321\\263\\225*bZ%9\\246y\\370\\271\\027B\\314\\000c\\327\\215H\\310\\177\\376\\275\\321\\374\\362\\247[ n\\301\\275\\252S\\010\\025\\270\\211Irc\\241\\275>\\346\\216\\023\\300f\\205\\340\\012\\261+s\\220\\253\\033\\331y~Z\\273\\227\\355\\274\\267|~\\306\\354M\\301'Rm\\353=\\202\\203Yy\\335\\033\\0202C\\214i\\334\\315\\306\\376w\\340\\\\\\220]\\245\\321\\355\\007\\373\\226f\\327\\317g\\323;\\015Y\\226\\377\\376\\037W\\327<(\\227$\\000\\000";s:5:"title";s:0:"";s:7:"headers";a:4:{s:7:"Expires";s:31:"Thu, 10 Dec 2015 07:06:11 +0000";s:13:"Cache-Control";s:25:"private, max-age=31536000";s:12:"Content-Type";s:24:"text/html; charset=utf-8";s:16:"Content-Language";s:2:"en";}s:15:"page_compressed";b:1;}	1449731171	1418195171	1
\.


--
-- Data for Name: cache_path; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY cache_path (cid, data, expire, created, serialized) FROM stdin;
\.


--
-- Data for Name: date_format_locale; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY date_format_locale (format, type, language) FROM stdin;
\.


--
-- Data for Name: date_format_type; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY date_format_type (type, title, locked) FROM stdin;
long	Long	1
medium	Medium	1
short	Short	1
\.


--
-- Data for Name: date_formats; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY date_formats (dfid, format, type, locked) FROM stdin;
1	Y-m-d H:i	short	1
2	m/d/Y - H:i	short	1
3	d/m/Y - H:i	short	1
4	Y/m/d - H:i	short	1
5	d.m.Y - H:i	short	1
6	m/d/Y - g:ia	short	1
7	d/m/Y - g:ia	short	1
8	Y/m/d - g:ia	short	1
9	M j Y - H:i	short	1
10	j M Y - H:i	short	1
11	Y M j - H:i	short	1
12	M j Y - g:ia	short	1
13	j M Y - g:ia	short	1
14	Y M j - g:ia	short	1
15	D, Y-m-d H:i	medium	1
16	D, m/d/Y - H:i	medium	1
17	D, d/m/Y - H:i	medium	1
18	D, Y/m/d - H:i	medium	1
19	F j, Y - H:i	medium	1
20	j F, Y - H:i	medium	1
21	Y, F j - H:i	medium	1
22	D, m/d/Y - g:ia	medium	1
23	D, d/m/Y - g:ia	medium	1
24	D, Y/m/d - g:ia	medium	1
25	F j, Y - g:ia	medium	1
26	j F Y - g:ia	medium	1
27	Y, F j - g:ia	medium	1
28	j. F Y - G:i	medium	1
29	l, F j, Y - H:i	long	1
30	l, j F, Y - H:i	long	1
31	l, Y,  F j - H:i	long	1
32	l, F j, Y - g:ia	long	1
33	l, j F Y - g:ia	long	1
34	l, Y,  F j - g:ia	long	1
35	l, j. F Y - G:i	long	1
\.


--
-- Name: date_formats_dfid_seq; Type: SEQUENCE SET; Schema: public; Owner: drupal
--

SELECT pg_catalog.setval('date_formats_dfid_seq', 35, true);


--
-- Data for Name: field_config; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY field_config (id, field_name, type, module, active, storage_type, storage_module, storage_active, locked, data, cardinality, translatable, deleted) FROM stdin;
\.


--
-- Name: field_config_id_seq; Type: SEQUENCE SET; Schema: public; Owner: drupal
--

SELECT pg_catalog.setval('field_config_id_seq', 1, false);


--
-- Data for Name: field_config_instance; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY field_config_instance (id, field_id, field_name, entity_type, bundle, data, deleted) FROM stdin;
\.


--
-- Name: field_config_instance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: drupal
--

SELECT pg_catalog.setval('field_config_instance_id_seq', 1, false);


--
-- Data for Name: file_managed; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY file_managed (fid, uid, filename, uri, filemime, filesize, status, "timestamp") FROM stdin;
\.


--
-- Name: file_managed_fid_seq; Type: SEQUENCE SET; Schema: public; Owner: drupal
--

SELECT pg_catalog.setval('file_managed_fid_seq', 1, false);


--
-- Data for Name: file_usage; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY file_usage (fid, module, type, id, count) FROM stdin;
\.


--
-- Data for Name: filter; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY filter (format, module, name, weight, status, settings) FROM stdin;
plain_text	filter	filter_url	1	1	a:1:{s:17:"filter_url_length";i:72;}
plain_text	filter	filter_autop	2	1	a:0:{}
plain_text	filter	filter_htmlcorrector	10	0	a:0:{}
plain_text	filter	filter_html_escape	0	1	a:0:{}
plain_text	filter	filter_html	-10	0	a:3:{s:12:"allowed_html";s:74:"<a> <em> <strong> <cite> <blockquote> <code> <ul> <ol> <li> <dl> <dt> <dd>";s:16:"filter_html_help";i:1;s:20:"filter_html_nofollow";i:0;}
\.


--
-- Data for Name: filter_format; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY filter_format (format, name, cache, status, weight) FROM stdin;
plain_text	Plain text	1	1	10
\.


--
-- Data for Name: flood; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY flood (fid, event, identifier, "timestamp", expiration) FROM stdin;
\.


--
-- Name: flood_fid_seq; Type: SEQUENCE SET; Schema: public; Owner: drupal
--

SELECT pg_catalog.setval('flood_fid_seq', 1, false);


--
-- Data for Name: history; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY history (uid, nid, "timestamp") FROM stdin;
\.


--
-- Data for Name: l10n_update_file; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY l10n_update_file (project, language, type, filename, fileurl, uri, "timestamp", version, status, last_checked) FROM stdin;
\.


--
-- Data for Name: l10n_update_project; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY l10n_update_project (name, project_type, core, version, l10n_server, l10n_path, status) FROM stdin;
admin_menu	module	7.x	7.x-3.0-rc4		http://ftp.drupal.org/files/translations/7.x/admin_menu/admin_menu-7.x-3.0-rc4.%language.po	1
drupal	core	7.x	7.34		http://ftp.drupal.org/files/translations/7.x/drupal/drupal-7.34.%language.po	1
devel	module	7.x	7.x-1.5		http://ftp.drupal.org/files/translations/7.x/devel/devel-7.x-1.5.%language.po	1
l10n_update	module	7.x	7.x-1.1		http://ftp.drupal.org/files/translations/7.x/l10n_update/l10n_update-7.x-1.1.%language.po	1
module_filter	module	7.x	7.x-2.0-alpha2		http://ftp.drupal.org/files/translations/7.x/module_filter/module_filter-7.x-2.0-alpha2.%language.po	1
\.


--
-- Data for Name: languages; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY languages (language, name, native, direction, enabled, plurals, formula, domain, prefix, weight, javascript) FROM stdin;
en	English	English	0	1	0				0	
\.


--
-- Data for Name: locales_source; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY locales_source (lid, location, textgroup, source, context, version) FROM stdin;
1	misc/drupal.js	default	An AJAX HTTP error occurred.		none
2	misc/drupal.js	default	HTTP Result Code: !status		none
3	misc/drupal.js	default	An AJAX HTTP request terminated abnormally.		none
4	misc/drupal.js	default	Debugging information follows.		none
5	misc/drupal.js	default	Path: !uri		none
6	misc/drupal.js	default	StatusText: !statusText		none
7	misc/drupal.js	default	ResponseText: !responseText		none
8	misc/drupal.js	default	ReadyState: !readyState		none
9	sites/all/modules/module_filter/js/module_filter.js	default	No results		none
10	sites/all/modules/module_filter/js/module_filter.js	default	clear		none
11	sites/all/modules/module_filter/js/module_filter_tab.js	default	All		none
12	sites/all/modules/module_filter/js/module_filter_tab.js	default	New		none
13	sites/all/modules/module_filter/js/module_filter_tab.js	default	Modules installed within the last week.		none
14	sites/all/modules/module_filter/js/module_filter_tab.js	default	No modules added within the last week.		none
15	sites/all/modules/module_filter/js/module_filter_tab.js	default	Recent		none
16	sites/all/modules/module_filter/js/module_filter_tab.js	default	Modules enabled/disabled within the last week.		none
17	sites/all/modules/module_filter/js/module_filter_tab.js	default	No modules were enabled or disabled within the last week.		none
18	sites/all/modules/module_filter/js/module_filter_tab.js	default	@enabled of @total		none
19	modules/contextual/contextual.js	default	Configure		none
20	misc/collapse.js	default	Hide		none
21	misc/collapse.js	default	Show		none
22	misc/vertical-tabs.js	default	(active tab)		none
23	modules/block/block.js	default	Not restricted		none
24	modules/block/block.js	default	Restricted to certain pages		none
25	modules/block/block.js	default	Not customizable		none
26	modules/block/block.js	default	The changes to these blocks will not be saved until the <em>Save blocks</em> button is clicked.		none
27	modules/block/block.js	default	The block cannot be placed in this region.		none
\.


--
-- Name: locales_source_lid_seq; Type: SEQUENCE SET; Schema: public; Owner: drupal
--

SELECT pg_catalog.setval('locales_source_lid_seq', 27, true);


--
-- Data for Name: locales_target; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY locales_target (lid, translation, language, plid, plural, l10n_status) FROM stdin;
\.


--
-- Data for Name: menu_links; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY menu_links (menu_name, mlid, plid, link_path, router_path, link_title, options, module, hidden, external, has_children, expanded, weight, depth, customized, p1, p2, p3, p4, p5, p6, p7, p8, p9, updated) FROM stdin;
devel	115	0	devel/settings	devel/settings	Devel settings	a:1:{s:10:"attributes";a:1:{s:5:"title";s:168:"Helper functions, pages, and blocks to assist Drupal developers. The devel blocks can be managed via the <a href="/admin/structure/block">block administration</a> page.";}}	system	0	0	0	0	0	1	0	115	0	0	0	0	0	0	0	0	0
devel	116	0	devel/php	devel/php	Execute PHP Code	a:1:{s:10:"attributes";a:1:{s:5:"title";s:21:"Execute some PHP code";}}	system	0	0	0	0	0	1	0	116	0	0	0	0	0	0	0	0	0
navigation	3	0	filter/tips	filter/tips	Compose tips	a:0:{}	system	1	0	0	0	0	1	0	3	0	0	0	0	0	0	0	0	0
devel	117	0	devel/reference	devel/reference	Function reference	a:1:{s:10:"attributes";a:1:{s:5:"title";s:73:"View a list of currently defined user functions with documentation links.";}}	system	0	0	0	0	0	1	0	117	0	0	0	0	0	0	0	0	0
devel	118	0	devel/elements	devel/elements	Hook_elements()	a:1:{s:10:"attributes";a:1:{s:5:"title";s:51:"View the active form/render elements for this site.";}}	system	0	0	0	0	0	1	0	118	0	0	0	0	0	0	0	0	0
navigation	5	0	node/add	node/add	Add content	a:0:{}	system	0	0	0	0	0	1	0	5	0	0	0	0	0	0	0	0	0
devel	119	0	devel/phpinfo	devel/phpinfo	PHPinfo()	a:1:{s:10:"attributes";a:1:{s:5:"title";s:36:"View your server's PHP configuration";}}	system	0	0	0	0	0	1	0	119	0	0	0	0	0	0	0	0	0
devel	120	0	devel/reinstall	devel/reinstall	Reinstall modules	a:2:{s:10:"attributes";a:1:{s:5:"title";s:64:"Run hook_uninstall() and then hook_install() for a given module.";}s:5:"alter";b:1;}	system	0	0	0	0	0	1	0	120	0	0	0	0	0	0	0	0	0
devel	121	0	devel/run-cron	devel/run-cron	Run cron	a:0:{}	system	0	0	0	0	0	1	0	121	0	0	0	0	0	0	0	0	0
devel	122	0	devel/session	devel/session	Session viewer	a:1:{s:10:"attributes";a:1:{s:5:"title";s:31:"List the contents of $_SESSION.";}}	system	0	0	0	0	0	1	0	122	0	0	0	0	0	0	0	0	0
devel	123	0	devel/variable	devel/variable	Variable editor	a:2:{s:10:"attributes";a:1:{s:5:"title";s:31:"Edit and delete site variables.";}s:5:"alter";b:1;}	system	0	0	0	0	0	1	0	123	0	0	0	0	0	0	0	0	0
user-menu	9	2	user/register	user/register	Create new account	a:0:{}	system	-1	0	0	0	0	2	0	2	9	0	0	0	0	0	0	0	0
management	10	1	admin/index	admin/index	Index	a:0:{}	system	-1	0	0	0	-18	2	0	1	10	0	0	0	0	0	0	0	0
user-menu	11	2	user/login	user/login	Log in	a:0:{}	system	-1	0	0	0	0	2	0	2	11	0	0	0	0	0	0	0	0
user-menu	12	0	user/logout	user/logout	Log out	a:0:{}	system	0	0	0	0	10	1	0	12	0	0	0	0	0	0	0	0	0
devel	126	0	devel/cache/clear	devel/cache/clear	Clear cache	a:2:{s:10:"attributes";a:1:{s:5:"title";s:100:"Clear the CSS cache and all database cache tables which store page, node, theme and variable caches.";}s:5:"alter";b:1;}	system	0	0	0	0	0	1	0	126	0	0	0	0	0	0	0	0	0
user-menu	17	2	user/password	user/password	Request new password	a:0:{}	system	-1	0	0	0	0	2	0	2	17	0	0	0	0	0	0	0	0
user-menu	2	0	user	user	User account	a:1:{s:5:"alter";b:1;}	system	0	0	0	0	-10	1	0	2	0	0	0	0	0	0	0	0	0
devel	129	0	devel/entity/info	devel/entity/info	Entity info	a:1:{s:10:"attributes";a:1:{s:5:"title";s:46:"View entity information across the whole site.";}}	system	0	0	0	0	0	1	0	129	0	0	0	0	0	0	0	0	0
management	19	1	admin/tasks	admin/tasks	Tasks	a:0:{}	system	-1	0	0	0	-20	2	0	1	19	0	0	0	0	0	0	0	0
management	1	0	admin	admin	Administration	a:0:{}	system	0	0	1	0	9	1	0	1	0	0	0	0	0	0	0	0	0
management	20	15	admin/people/create	admin/people/create	Add user	a:0:{}	system	-1	0	0	0	0	3	0	1	15	20	0	0	0	0	0	0	0
devel	130	0	devel/field/info	devel/field/info	Field info	a:1:{s:10:"attributes";a:1:{s:5:"title";s:46:"View fields information across the whole site.";}}	system	0	0	0	0	0	1	0	130	0	0	0	0	0	0	0	0	0
devel	131	0	devel/menu/item	devel/menu/item	Menu item	a:2:{s:10:"attributes";a:1:{s:5:"title";s:32:"Details about a given menu item.";}s:5:"alter";b:1;}	system	0	0	0	0	0	1	0	131	0	0	0	0	0	0	0	0	0
devel	132	0	devel/menu/reset	devel/menu/reset	Rebuild menus	a:2:{s:10:"attributes";a:1:{s:5:"title";s:113:"Rebuild menu based on hook_menu() and revert any custom changes. All menu items return to their default settings.";}s:5:"alter";b:1;}	system	0	0	0	0	0	1	0	132	0	0	0	0	0	0	0	0	0
devel	133	0	devel/theme/registry	devel/theme/registry	Theme registry	a:1:{s:10:"attributes";a:1:{s:5:"title";s:63:"View a list of available theme functions across the whole site.";}}	system	0	0	0	0	0	1	0	133	0	0	0	0	0	0	0	0	0
management	23	8	admin/content/node	admin/content/node	Content	a:0:{}	system	-1	0	0	0	-10	3	0	1	8	23	0	0	0	0	0	0	0
management	8	1	admin/content	admin/content	Content	a:1:{s:10:"attributes";a:1:{s:5:"title";s:24:"Find and manage content.";}}	system	0	0	0	0	-10	2	0	1	8	0	0	0	0	0	0	0	0
navigation	135	124	comment/%comment/devel/load	comment/%comment/devel/load	Load	a:0:{}	system	-1	0	0	0	0	2	0	124	135	0	0	0	0	0	0	0	0
management	18	1	admin/structure	admin/structure	Structure	a:1:{s:10:"attributes";a:1:{s:5:"title";s:45:"Administer blocks, content types, menus, etc.";}}	system	0	0	1	0	-8	2	0	1	18	0	0	0	0	0	0	0	0
navigation	26	4	node/%/delete	node/%/delete	Delete	a:0:{}	system	-1	0	0	0	1	2	0	4	26	0	0	0	0	0	0	0	0
navigation	136	124	comment/%comment/devel/render	comment/%comment/devel/render	Render	a:0:{}	system	-1	0	0	0	100	2	0	124	136	0	0	0	0	0	0	0	0
navigation	124	0	comment/%comment/devel	comment/%comment/devel	Devel	a:0:{}	system	-1	0	0	0	100	1	0	124	0	0	0	0	0	0	0	0	0
management	137	125	admin/config/administration/admin_menu	admin/config/administration/admin_menu	Administration menu	a:1:{s:10:"attributes";a:1:{s:5:"title";s:36:"Adjust administration menu settings.";}}	system	0	0	0	0	0	4	0	1	7	125	137	0	0	0	0	0	0
management	125	7	admin/config/administration	admin/config/administration	Administration	a:1:{s:10:"attributes";a:1:{s:5:"title";s:21:"Administration tools.";}}	system	0	0	1	0	0	3	0	1	7	125	0	0	0	0	0	0	0
management	138	27	admin/config/development/devel	admin/config/development/devel	Devel settings	a:1:{s:10:"attributes";a:1:{s:5:"title";s:168:"Helper functions, pages, and blocks to assist Drupal developers. The devel blocks can be managed via the <a href="/admin/structure/block">block administration</a> page.";}}	system	0	0	0	0	0	4	0	1	7	27	138	0	0	0	0	0	0
navigation	29	4	node/%/edit	node/%/edit	Edit	a:0:{}	system	-1	0	0	0	0	2	0	4	29	0	0	0	0	0	0	0	0
navigation	140	127	node/%/devel/load	node/%/devel/load	Load	a:0:{}	system	-1	0	0	0	0	3	0	4	127	140	0	0	0	0	0	0	0
navigation	141	128	user/%/devel/load	user/%/devel/load	Load	a:0:{}	system	-1	0	0	0	0	3	0	14	128	141	0	0	0	0	0	0	0
management	31	15	admin/people/people	admin/people/people	List	a:1:{s:10:"attributes";a:1:{s:5:"title";s:50:"Find and manage people interacting with your site.";}}	system	-1	0	0	0	-10	3	0	1	15	31	0	0	0	0	0	0	0
management	32	6	admin/appearance/list	admin/appearance/list	List	a:1:{s:10:"attributes";a:1:{s:5:"title";s:31:"Select and configure your theme";}}	system	-1	0	0	0	-1	3	0	1	6	32	0	0	0	0	0	0	0
management	142	46	admin/config/user-interface/modulefilter	admin/config/user-interface/modulefilter	Module filter	a:1:{s:10:"attributes";a:1:{s:5:"title";s:46:"Configure how the modules page looks and acts.";}}	system	0	0	0	0	0	4	0	1	7	46	142	0	0	0	0	0	0
navigation	143	127	node/%/devel/render	node/%/devel/render	Render	a:0:{}	system	-1	0	0	0	100	3	0	4	127	143	0	0	0	0	0	0	0
navigation	127	4	node/%/devel	node/%/devel	Devel	a:0:{}	system	-1	0	0	0	100	2	0	4	127	0	0	0	0	0	0	0	0
navigation	144	128	user/%/devel/render	user/%/devel/render	Render	a:0:{}	system	-1	0	0	0	100	3	0	14	128	144	0	0	0	0	0	0	0
navigation	128	14	user/%/devel	user/%/devel	Devel	a:0:{}	system	-1	0	0	0	100	2	0	14	128	0	0	0	0	0	0	0	0
management	15	1	admin/people	admin/people	People	a:1:{s:10:"attributes";a:1:{s:5:"title";s:45:"Manage user accounts, roles, and permissions.";}}	system	0	0	0	0	-4	2	0	1	15	0	0	0	0	0	0	0	0
management	36	16	admin/reports/dblog	admin/reports/dblog	Recent log messages	a:1:{s:10:"attributes";a:1:{s:5:"title";s:43:"View events that have recently been logged.";}}	system	0	0	0	0	-1	3	0	1	16	36	0	0	0	0	0	0	0
navigation	146	134	taxonomy/term/%taxonomy_term/devel/load	taxonomy/term/%taxonomy_term/devel/load	Load	a:0:{}	system	-1	0	0	0	0	2	0	134	146	0	0	0	0	0	0	0	0
management	46	7	admin/config/user-interface	admin/config/user-interface	User interface	a:1:{s:10:"attributes";a:1:{s:5:"title";s:38:"Tools that enhance the user interface.";}}	system	0	0	1	0	-15	3	0	1	7	46	0	0	0	0	0	0	0
navigation	147	134	taxonomy/term/%taxonomy_term/devel/render	taxonomy/term/%taxonomy_term/devel/render	Render	a:0:{}	system	-1	0	0	0	100	2	0	134	147	0	0	0	0	0	0	0	0
navigation	134	0	taxonomy/term/%taxonomy_term/devel	taxonomy/term/%taxonomy_term/devel	Devel	a:0:{}	system	-1	0	0	0	100	1	0	134	0	0	0	0	0	0	0	0	0
management	148	139	admin/config/regional/language/add	admin/config/regional/language/add	Add language	a:0:{}	system	-1	0	0	0	5	5	0	1	7	37	139	148	0	0	0	0	0
management	6	1	admin/appearance	admin/appearance	Appearance	a:1:{s:10:"attributes";a:1:{s:5:"title";s:33:"Select and configure your themes.";}}	system	0	0	0	0	-6	2	0	1	6	0	0	0	0	0	0	0	0
management	41	16	admin/reports/status	admin/reports/status	Status report	a:1:{s:10:"attributes";a:1:{s:5:"title";s:74:"Get a status report about your site's operation and any detected problems.";}}	system	0	0	0	0	-60	3	0	1	16	41	0	0	0	0	0	0	0
management	150	145	admin/config/regional/translate/export	admin/config/regional/translate/export	Export	a:0:{}	system	-1	0	0	0	30	5	0	1	7	37	145	150	0	0	0	0	0
management	151	27	admin/config/development/generate/content	admin/config/development/generate/content	Generate content	a:1:{s:10:"attributes";a:1:{s:5:"title";s:79:"Generate a given number of nodes and comments. Optionally delete current items.";}}	system	0	0	0	0	0	4	0	1	7	27	151	0	0	0	0	0	0
management	43	16	admin/reports/access-denied	admin/reports/access-denied	Top 'access denied' errors	a:1:{s:10:"attributes";a:1:{s:5:"title";s:35:"View 'access denied' errors (403s).";}}	system	0	0	0	0	0	3	0	1	16	43	0	0	0	0	0	0	0
management	152	27	admin/config/development/generate/menu	admin/config/development/generate/menu	Generate menus	a:1:{s:10:"attributes";a:1:{s:5:"title";s:81:"Generate a given number of menus and menu links. Optionally delete current menus.";}}	system	0	0	0	0	0	4	0	1	7	27	152	0	0	0	0	0	0
management	44	16	admin/reports/page-not-found	admin/reports/page-not-found	Top 'page not found' errors	a:1:{s:10:"attributes";a:1:{s:5:"title";s:36:"View 'page not found' errors (404s).";}}	system	0	0	0	0	0	3	0	1	16	44	0	0	0	0	0	0	0
management	153	27	admin/config/development/generate/user	admin/config/development/generate/user	Generate users	a:1:{s:10:"attributes";a:1:{s:5:"title";s:66:"Generate a given number of users. Optionally delete current users.";}}	system	0	0	0	0	0	4	0	1	7	27	153	0	0	0	0	0	0
management	13	1	admin/modules	admin/modules	Modules	a:1:{s:10:"attributes";a:1:{s:5:"title";s:26:"Extend site functionality.";}}	system	0	0	0	0	-2	2	0	1	13	0	0	0	0	0	0	0	0
management	7	1	admin/config	admin/config	Configuration	a:1:{s:10:"attributes";a:1:{s:5:"title";s:20:"Administer settings.";}}	system	0	0	1	0	0	2	0	1	7	0	0	0	0	0	0	0	0
navigation	47	4	node/%/view	node/%/view	View	a:0:{}	system	-1	0	0	0	-10	2	0	4	47	0	0	0	0	0	0	0	0
navigation	4	0	node/%	node/%		a:0:{}	system	0	0	0	0	0	1	0	4	0	0	0	0	0	0	0	0	0
navigation	48	14	user/%/view	user/%/view	View	a:0:{}	system	-1	0	0	0	-10	2	0	14	48	0	0	0	0	0	0	0	0
navigation	14	0	user/%	user/%	My account	a:0:{}	system	0	0	1	0	0	1	0	14	0	0	0	0	0	0	0	0	0
management	154	145	admin/config/regional/translate/import	admin/config/regional/translate/import	Import	a:0:{}	system	-1	0	0	0	20	5	0	1	7	37	145	154	0	0	0	0	0
management	50	7	admin/config/workflow	admin/config/workflow	Workflow	a:1:{s:10:"attributes";a:1:{s:5:"title";s:43:"Content workflow, editorial workflow tools.";}}	system	0	0	0	0	5	3	0	1	7	50	0	0	0	0	0	0	0
management	155	139	admin/config/regional/language/overview	admin/config/regional/language/overview	List	a:0:{}	system	-1	0	0	0	0	5	0	1	7	37	139	155	0	0	0	0	0
management	157	145	admin/config/regional/translate/overview	admin/config/regional/translate/overview	Overview	a:0:{}	system	-1	0	0	0	0	5	0	1	7	37	145	157	0	0	0	0	0
management	53	21	admin/structure/block/add	admin/structure/block/add	Add block	a:0:{}	system	-1	0	0	0	0	4	0	1	18	21	53	0	0	0	0	0	0
management	54	25	admin/structure/types/add	admin/structure/types/add	Add content type	a:0:{}	system	-1	0	0	0	0	4	0	1	18	25	54	0	0	0	0	0	0
management	158	145	admin/config/regional/translate/translate	admin/config/regional/translate/translate	Translate	a:0:{}	system	-1	0	0	0	10	5	0	1	7	37	145	158	0	0	0	0	0
management	55	40	admin/appearance/settings/bartik	admin/appearance/settings/bartik	Bartik	a:0:{}	system	-1	0	0	0	0	4	0	1	6	40	55	0	0	0	0	0	0
management	159	139	admin/config/regional/language/update	admin/config/regional/language/update	Translation updates	a:1:{s:10:"attributes";a:1:{s:5:"title";s:30:"Automatic update configuration";}}	system	-1	0	0	0	20	5	0	1	7	37	139	159	0	0	0	0	0
management	56	39	admin/config/search/clean-urls	admin/config/search/clean-urls	Clean URLs	a:1:{s:10:"attributes";a:1:{s:5:"title";s:43:"Enable or disable clean URLs for your site.";}}	system	0	0	0	0	5	4	0	1	7	39	56	0	0	0	0	0	0
management	39	7	admin/config/search	admin/config/search	Search and metadata	a:1:{s:10:"attributes";a:1:{s:5:"title";s:36:"Local site search, metadata and SEO.";}}	system	0	0	1	0	-10	3	0	1	7	39	0	0	0	0	0	0	0
management	57	42	admin/config/system/cron	admin/config/system/cron	Cron	a:1:{s:10:"attributes";a:1:{s:5:"title";s:40:"Manage automatic site maintenance tasks.";}}	system	0	0	0	0	20	4	0	1	7	42	57	0	0	0	0	0	0
management	160	145	admin/config/regional/translate/update	admin/config/regional/translate/update	Update	a:1:{s:10:"attributes";a:1:{s:5:"title";s:17:"Available updates";}}	system	-1	0	0	0	20	5	0	1	7	37	145	160	0	0	0	0	0
management	161	139	admin/config/regional/language/delete/%	admin/config/regional/language/delete/%	Confirm	a:0:{}	system	0	0	0	0	0	5	0	1	7	37	139	161	0	0	0	0	0
management	59	16	admin/reports/event/%	admin/reports/event/%	Details	a:0:{}	system	0	0	0	0	0	3	0	1	16	59	0	0	0	0	0	0	0
management	16	1	admin/reports	admin/reports	Reports	a:1:{s:10:"attributes";a:1:{s:5:"title";s:34:"View reports, updates, and errors.";}}	system	0	0	1	0	5	2	0	1	16	0	0	0	0	0	0	0	0
management	60	33	admin/config/media/file-system	admin/config/media/file-system	File system	a:1:{s:10:"attributes";a:1:{s:5:"title";s:68:"Tell Drupal where to store uploaded files and how they are accessed.";}}	system	0	0	0	0	-10	4	0	1	7	33	60	0	0	0	0	0	0
management	162	145	admin/config/regional/translate/delete/%	admin/config/regional/translate/delete/%	Delete string	a:0:{}	system	0	0	0	0	0	5	0	1	7	37	145	162	0	0	0	0	0
management	61	40	admin/appearance/settings/garland	admin/appearance/settings/garland	Garland	a:0:{}	system	-1	0	0	0	0	4	0	1	6	40	61	0	0	0	0	0	0
management	62	40	admin/appearance/settings/global	admin/appearance/settings/global	Global settings	a:0:{}	system	-1	0	0	0	-1	4	0	1	6	40	62	0	0	0	0	0	0
management	163	139	admin/config/regional/language/edit/%	admin/config/regional/language/edit/%	Edit language	a:0:{}	system	0	0	0	0	0	5	0	1	7	37	139	163	0	0	0	0	0
management	139	37	admin/config/regional/language	admin/config/regional/language	Languages	a:1:{s:10:"attributes";a:1:{s:5:"title";s:55:"Configure languages for content and the user interface.";}}	system	0	0	1	0	-10	4	0	1	7	37	139	0	0	0	0	0	0
management	34	7	admin/config/people	admin/config/people	People	a:1:{s:10:"attributes";a:1:{s:5:"title";s:24:"Configure user accounts.";}}	system	0	0	1	0	-20	3	0	1	7	34	0	0	0	0	0	0	0
management	164	145	admin/config/regional/translate/edit/%	admin/config/regional/translate/edit/%	Edit string	a:0:{}	system	0	0	0	0	0	5	0	1	7	37	145	164	0	0	0	0	0
management	64	33	admin/config/media/image-toolkit	admin/config/media/image-toolkit	Image toolkit	a:1:{s:10:"attributes";a:1:{s:5:"title";s:74:"Choose which image toolkit to use if you have installed optional toolkits.";}}	system	0	0	0	0	20	4	0	1	7	33	64	0	0	0	0	0	0
management	33	7	admin/config/media	admin/config/media	Media	a:1:{s:10:"attributes";a:1:{s:5:"title";s:12:"Media tools.";}}	system	0	0	1	0	-10	3	0	1	7	33	0	0	0	0	0	0	0
management	145	37	admin/config/regional/translate	admin/config/regional/translate	Translate interface	a:1:{s:10:"attributes";a:1:{s:5:"title";s:59:"Translate the built in interface and optionally other text.";}}	system	0	0	1	0	-5	4	0	1	7	37	145	0	0	0	0	0	0
management	65	30	admin/modules/list/confirm	admin/modules/list/confirm	List	a:0:{}	system	-1	0	0	0	0	4	0	1	13	30	65	0	0	0	0	0	0
management	30	13	admin/modules/list	admin/modules/list	List	a:0:{}	system	-1	0	0	0	0	3	0	1	13	30	0	0	0	0	0	0	0
management	66	25	admin/structure/types/list	admin/structure/types/list	List	a:0:{}	system	-1	0	0	0	-10	4	0	1	18	25	66	0	0	0	0	0	0
management	165	149	admin/config/regional/language/configure/session	admin/config/regional/language/configure/session	Session language detection configuration	a:0:{}	system	-1	0	0	0	0	6	0	1	7	37	139	149	165	0	0	0	0
management	67	27	admin/config/development/logging	admin/config/development/logging	Logging and errors	a:1:{s:10:"attributes";a:1:{s:5:"title";s:154:"Settings for logging and alerts modules. Various modules can route Drupal's system events to different destinations, such as syslog, database, email, etc.";}}	system	0	0	0	0	-15	4	0	1	7	27	67	0	0	0	0	0	0
management	37	7	admin/config/regional	admin/config/regional	Regional and language	a:1:{s:10:"attributes";a:1:{s:5:"title";s:48:"Regional settings, localization and translation.";}}	system	0	0	1	0	-5	3	0	1	7	37	0	0	0	0	0	0	0
management	68	27	admin/config/development/maintenance	admin/config/development/maintenance	Maintenance mode	a:1:{s:10:"attributes";a:1:{s:5:"title";s:62:"Take the site offline for maintenance or bring it back online.";}}	system	0	0	0	0	-10	4	0	1	7	27	68	0	0	0	0	0	0
management	69	27	admin/config/development/performance	admin/config/development/performance	Performance	a:1:{s:10:"attributes";a:1:{s:5:"title";s:101:"Enable or disable page caching for anonymous users and set CSS and JS bandwidth optimization options.";}}	system	0	0	0	0	-20	4	0	1	7	27	69	0	0	0	0	0	0
management	27	7	admin/config/development	admin/config/development	Development	a:1:{s:10:"attributes";a:1:{s:5:"title";s:18:"Development tools.";}}	system	0	0	1	0	-10	3	0	1	7	27	0	0	0	0	0	0	0
management	70	35	admin/people/permissions/list	admin/people/permissions/list	Permissions	a:1:{s:10:"attributes";a:1:{s:5:"title";s:64:"Determine access to features by selecting permissions for roles.";}}	system	-1	0	0	0	-8	4	0	1	15	35	70	0	0	0	0	0	0
management	71	49	admin/config/services/rss-publishing	admin/config/services/rss-publishing	RSS publishing	a:1:{s:10:"attributes";a:1:{s:5:"title";s:114:"Configure the site description, the number of items per feed and whether feeds should be titles/teasers/full-text.";}}	system	0	0	0	0	0	4	0	1	7	49	71	0	0	0	0	0	0
management	49	7	admin/config/services	admin/config/services	Web services	a:1:{s:10:"attributes";a:1:{s:5:"title";s:30:"Tools related to web services.";}}	system	0	0	1	0	0	3	0	1	7	49	0	0	0	0	0	0	0
management	72	37	admin/config/regional/settings	admin/config/regional/settings	Regional settings	a:1:{s:10:"attributes";a:1:{s:5:"title";s:54:"Settings for the site's default time zone and country.";}}	system	0	0	0	0	-20	4	0	1	7	37	72	0	0	0	0	0	0
management	166	149	admin/config/regional/language/configure/url	admin/config/regional/language/configure/url	URL language detection configuration	a:0:{}	system	-1	0	0	0	0	6	0	1	7	37	139	149	166	0	0	0	0
management	149	139	admin/config/regional/language/configure	admin/config/regional/language/configure	Detection and selection	a:0:{}	system	-1	0	0	0	10	5	0	1	7	37	139	149	0	0	0	0	0
management	35	15	admin/people/permissions	admin/people/permissions	Permissions	a:1:{s:10:"attributes";a:1:{s:5:"title";s:64:"Determine access to features by selecting permissions for roles.";}}	system	-1	0	0	0	0	3	0	1	15	35	0	0	0	0	0	0	0
management	74	40	admin/appearance/settings/seven	admin/appearance/settings/seven	Seven	a:0:{}	system	-1	0	0	0	0	4	0	1	6	40	74	0	0	0	0	0	0
management	167	156	admin/config/regional/date-time/locale/%/edit	admin/config/regional/date-time/locale/%/edit	Localize date formats	a:1:{s:10:"attributes";a:1:{s:5:"title";s:38:"Configure date formats for each locale";}}	system	0	0	0	0	0	6	0	1	7	37	58	156	167	0	0	0	0
management	168	156	admin/config/regional/date-time/locale/%/reset	admin/config/regional/date-time/locale/%/reset	Reset date formats	a:1:{s:10:"attributes";a:1:{s:5:"title";s:47:"Reset localized date formats to global defaults";}}	system	0	0	0	0	0	6	0	1	7	37	58	156	168	0	0	0	0
management	75	42	admin/config/system/site-information	admin/config/system/site-information	Site information	a:1:{s:10:"attributes";a:1:{s:5:"title";s:104:"Change site name, e-mail address, slogan, default front page, and number of posts per page, error pages.";}}	system	0	0	0	0	-20	4	0	1	7	42	75	0	0	0	0	0	0
management	42	7	admin/config/system	admin/config/system	System	a:1:{s:10:"attributes";a:1:{s:5:"title";s:37:"General system related configuration.";}}	system	0	0	1	0	-20	3	0	1	7	42	0	0	0	0	0	0	0
management	156	58	admin/config/regional/date-time/locale	admin/config/regional/date-time/locale	Localize	a:1:{s:10:"attributes";a:1:{s:5:"title";s:38:"Configure date formats for each locale";}}	system	-1	0	1	0	-8	5	0	1	7	37	58	156	0	0	0	0	0
management	76	40	admin/appearance/settings/stark	admin/appearance/settings/stark	Stark	a:0:{}	system	-1	0	0	0	0	4	0	1	6	40	76	0	0	0	0	0	0
management	40	6	admin/appearance/settings	admin/appearance/settings	Settings	a:1:{s:10:"attributes";a:1:{s:5:"title";s:46:"Configure default and theme specific settings.";}}	system	-1	0	0	0	20	3	0	1	6	40	0	0	0	0	0	0	0
management	24	7	admin/config/content	admin/config/content	Content authoring	a:1:{s:10:"attributes";a:1:{s:5:"title";s:53:"Settings related to formatting and authoring content.";}}	system	0	0	1	0	-15	3	0	1	7	24	0	0	0	0	0	0	0
management	78	45	admin/modules/uninstall/confirm	admin/modules/uninstall/confirm	Uninstall	a:0:{}	system	-1	0	0	0	0	4	0	1	13	45	78	0	0	0	0	0	0
management	45	13	admin/modules/uninstall	admin/modules/uninstall	Uninstall	a:0:{}	system	-1	0	0	0	20	3	0	1	13	45	0	0	0	0	0	0	0
navigation	79	28	user/%/edit/account	user/%/edit/account	Account	a:0:{}	system	-1	0	0	0	0	3	0	14	28	79	0	0	0	0	0	0	0
navigation	28	14	user/%/edit	user/%/edit	Edit	a:0:{}	system	-1	0	0	0	0	2	0	14	28	0	0	0	0	0	0	0	0
management	81	77	admin/config/content/formats/add	admin/config/content/formats/add	Add text format	a:0:{}	system	-1	0	0	0	1	5	0	1	7	24	77	81	0	0	0	0	0
management	82	21	admin/structure/block/list/bartik	admin/structure/block/list/bartik	Bartik	a:0:{}	system	-1	0	0	0	-10	4	0	1	18	21	82	0	0	0	0	0	0
management	83	52	admin/config/system/actions/configure	admin/config/system/actions/configure	Configure an advanced action	a:0:{}	system	-1	0	0	0	0	5	0	1	7	42	52	83	0	0	0	0	0
management	58	37	admin/config/regional/date-time	admin/config/regional/date-time	Date and time	a:1:{s:10:"attributes";a:1:{s:5:"title";s:44:"Configure display formats for date and time.";}}	system	0	0	0	0	-15	4	0	1	7	37	58	0	0	0	0	0	0
management	25	18	admin/structure/types	admin/structure/types	Content types	a:1:{s:10:"attributes";a:1:{s:5:"title";s:92:"Manage content types, including default status, front page promotion, comment settings, etc.";}}	system	0	0	1	0	0	3	0	1	18	25	0	0	0	0	0	0	0
management	87	77	admin/config/content/formats/list	admin/config/content/formats/list	List	a:0:{}	system	-1	0	0	0	0	5	0	1	7	24	77	87	0	0	0	0	0
management	77	24	admin/config/content/formats	admin/config/content/formats	Text formats	a:1:{s:10:"attributes";a:1:{s:5:"title";s:127:"Configure how content input by users is filtered, including allowed HTML tags. Also allows enabling of module-provided filters.";}}	system	0	0	1	0	0	4	0	1	7	24	77	0	0	0	0	0	0
management	88	52	admin/config/system/actions/manage	admin/config/system/actions/manage	Manage actions	a:1:{s:10:"attributes";a:1:{s:5:"title";s:41:"Manage the actions defined for your site.";}}	system	-1	0	0	0	-2	5	0	1	7	42	52	88	0	0	0	0	0
management	89	51	admin/config/people/accounts/settings	admin/config/people/accounts/settings	Settings	a:0:{}	system	-1	0	0	0	-10	5	0	1	7	34	51	89	0	0	0	0	0
management	51	34	admin/config/people/accounts	admin/config/people/accounts	Account settings	a:1:{s:10:"attributes";a:1:{s:5:"title";s:109:"Configure default behavior of users, including registration requirements, e-mails, fields, and user pictures.";}}	system	0	0	0	0	-10	4	0	1	7	34	51	0	0	0	0	0	0
navigation	93	38	node/%/revisions/%/delete	node/%/revisions/%/delete	Delete earlier revision	a:0:{}	system	0	0	0	0	0	3	0	4	38	93	0	0	0	0	0	0	0
navigation	94	38	node/%/revisions/%/revert	node/%/revisions/%/revert	Revert to earlier revision	a:0:{}	system	0	0	0	0	0	3	0	4	38	94	0	0	0	0	0	0	0
navigation	95	38	node/%/revisions/%/view	node/%/revisions/%/view	Revisions	a:0:{}	system	0	0	0	0	0	3	0	4	38	95	0	0	0	0	0	0	0
navigation	38	4	node/%/revisions	node/%/revisions	Revisions	a:0:{}	system	-1	0	1	0	2	2	0	4	38	0	0	0	0	0	0	0	0
management	96	86	admin/structure/block/list/garland/add	admin/structure/block/list/garland/add	Add block	a:0:{}	system	-1	0	0	0	0	5	0	1	18	21	86	96	0	0	0	0	0
management	86	21	admin/structure/block/list/garland	admin/structure/block/list/garland	Garland	a:0:{}	system	-1	0	0	0	0	4	0	1	18	21	86	0	0	0	0	0	0
management	97	90	admin/structure/block/list/seven/add	admin/structure/block/list/seven/add	Add block	a:0:{}	system	-1	0	0	0	0	5	0	1	18	21	90	97	0	0	0	0	0
management	90	21	admin/structure/block/list/seven	admin/structure/block/list/seven	Seven	a:0:{}	system	-1	0	0	0	0	4	0	1	18	21	90	0	0	0	0	0	0
management	98	91	admin/structure/block/list/stark/add	admin/structure/block/list/stark/add	Add block	a:0:{}	system	-1	0	0	0	0	5	0	1	18	21	91	98	0	0	0	0	0
management	91	21	admin/structure/block/list/stark	admin/structure/block/list/stark	Stark	a:0:{}	system	-1	0	0	0	0	4	0	1	18	21	91	0	0	0	0	0	0
management	99	92	admin/config/regional/date-time/types/add	admin/config/regional/date-time/types/add	Add date type	a:1:{s:10:"attributes";a:1:{s:5:"title";s:18:"Add new date type.";}}	system	-1	0	0	0	-10	6	0	1	7	37	58	92	99	0	0	0	0
management	100	85	admin/config/regional/date-time/formats/add	admin/config/regional/date-time/formats/add	Add format	a:1:{s:10:"attributes";a:1:{s:5:"title";s:43:"Allow users to add additional date formats.";}}	system	-1	0	0	0	-10	6	0	1	7	37	58	85	100	0	0	0	0
management	21	18	admin/structure/block	admin/structure/block	Blocks	a:1:{s:10:"attributes";a:1:{s:5:"title";s:79:"Configure what block content appears in your site's sidebars and other regions.";}}	system	0	0	1	0	0	3	0	1	18	21	0	0	0	0	0	0	0
navigation	102	22	user/%/cancel/confirm/%/%	user/%/cancel/confirm/%/%	Confirm account cancellation	a:0:{}	system	0	0	0	0	0	3	0	14	22	102	0	0	0	0	0	0	0
navigation	22	14	user/%/cancel	user/%/cancel	Cancel account	a:0:{}	system	0	0	1	0	0	2	0	14	22	0	0	0	0	0	0	0	0
management	103	84	admin/structure/types/manage/%/delete	admin/structure/types/manage/%/delete	Delete	a:0:{}	system	0	0	0	0	0	5	0	1	18	25	84	103	0	0	0	0	0
management	104	63	admin/config/people/ip-blocking/delete/%	admin/config/people/ip-blocking/delete/%	Delete IP address	a:0:{}	system	0	0	0	0	0	5	0	1	7	34	63	104	0	0	0	0	0
management	63	34	admin/config/people/ip-blocking	admin/config/people/ip-blocking	IP address blocking	a:1:{s:10:"attributes";a:1:{s:5:"title";s:28:"Manage blocked IP addresses.";}}	system	0	0	1	0	10	4	0	1	7	34	63	0	0	0	0	0	0
management	105	52	admin/config/system/actions/delete/%	admin/config/system/actions/delete/%	Delete action	a:1:{s:10:"attributes";a:1:{s:5:"title";s:17:"Delete an action.";}}	system	0	0	0	0	0	5	0	1	7	42	52	105	0	0	0	0	0
management	52	42	admin/config/system/actions	admin/config/system/actions	Actions	a:1:{s:10:"attributes";a:1:{s:5:"title";s:41:"Manage the actions defined for your site.";}}	system	0	0	1	0	0	4	0	1	7	42	52	0	0	0	0	0	0
management	106	73	admin/people/permissions/roles/delete/%	admin/people/permissions/roles/delete/%	Delete role	a:0:{}	system	0	0	0	0	0	5	0	1	15	35	73	106	0	0	0	0	0
management	107	80	admin/config/content/formats/%/disable	admin/config/content/formats/%/disable	Disable text format	a:0:{}	system	0	0	0	0	0	6	0	1	7	24	77	80	107	0	0	0	0
management	80	77	admin/config/content/formats/%	admin/config/content/formats/%		a:0:{}	system	0	0	1	0	0	5	0	1	7	24	77	80	0	0	0	0	0
management	108	84	admin/structure/types/manage/%/edit	admin/structure/types/manage/%/edit	Edit	a:0:{}	system	-1	0	0	0	0	5	0	1	18	25	84	108	0	0	0	0	0
management	84	25	admin/structure/types/manage/%	admin/structure/types/manage/%	Edit content type	a:0:{}	system	0	0	1	0	0	4	0	1	18	25	84	0	0	0	0	0	0
management	109	73	admin/people/permissions/roles/edit/%	admin/people/permissions/roles/edit/%	Edit role	a:0:{}	system	0	0	0	0	0	5	0	1	15	35	73	109	0	0	0	0	0
management	73	35	admin/people/permissions/roles	admin/people/permissions/roles	Roles	a:1:{s:10:"attributes";a:1:{s:5:"title";s:30:"List, edit, or add user roles.";}}	system	-1	0	1	0	-5	4	0	1	15	35	73	0	0	0	0	0	0
management	110	101	admin/structure/block/manage/%/%/configure	admin/structure/block/manage/%/%/configure	Configure block	a:0:{}	system	-1	0	0	0	0	5	0	1	18	21	101	110	0	0	0	0	0
management	111	101	admin/structure/block/manage/%/%/delete	admin/structure/block/manage/%/%/delete	Delete block	a:0:{}	system	-1	0	0	0	0	5	0	1	18	21	101	111	0	0	0	0	0
management	101	21	admin/structure/block/manage/%/%	admin/structure/block/manage/%/%	Configure block	a:0:{}	system	0	0	0	0	0	4	0	1	18	21	101	0	0	0	0	0	0
management	112	85	admin/config/regional/date-time/formats/%/delete	admin/config/regional/date-time/formats/%/delete	Delete date format	a:1:{s:10:"attributes";a:1:{s:5:"title";s:47:"Allow users to delete a configured date format.";}}	system	0	0	0	0	0	6	0	1	7	37	58	85	112	0	0	0	0
management	113	92	admin/config/regional/date-time/types/%/delete	admin/config/regional/date-time/types/%/delete	Delete date type	a:1:{s:10:"attributes";a:1:{s:5:"title";s:45:"Allow users to delete a configured date type.";}}	system	0	0	0	0	0	6	0	1	7	37	58	92	113	0	0	0	0
management	92	58	admin/config/regional/date-time/types	admin/config/regional/date-time/types	Types	a:1:{s:10:"attributes";a:1:{s:5:"title";s:44:"Configure display formats for date and time.";}}	system	-1	0	1	0	-10	5	0	1	7	37	58	92	0	0	0	0	0
management	114	85	admin/config/regional/date-time/formats/%/edit	admin/config/regional/date-time/formats/%/edit	Edit date format	a:1:{s:10:"attributes";a:1:{s:5:"title";s:45:"Allow users to edit a configured date format.";}}	system	0	0	0	0	0	6	0	1	7	37	58	85	114	0	0	0	0
management	85	58	admin/config/regional/date-time/formats	admin/config/regional/date-time/formats	Formats	a:1:{s:10:"attributes";a:1:{s:5:"title";s:51:"Configure display format strings for date and time.";}}	system	-1	0	1	0	-9	5	0	1	7	37	58	85	0	0	0	0	0
\.


--
-- Name: menu_links_mlid_seq; Type: SEQUENCE SET; Schema: public; Owner: drupal
--

SELECT pg_catalog.setval('menu_links_mlid_seq', 168, true);


--
-- Data for Name: menu_router; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY menu_router (path, load_functions, to_arg_functions, access_callback, access_arguments, page_callback, page_arguments, delivery_callback, fit, number_parts, context, tab_parent, tab_root, title, title_callback, title_arguments, theme_callback, theme_arguments, type, description, "position", weight, include_file) FROM stdin;
rss.xml			user_access	a:1:{i:0;s:14:"access content";}	node_feed	a:2:{i:0;b:0;i:1;a:0:{}}		1	1	0		rss.xml	RSS feed	t			a:0:{}	0			0	
node			user_access	a:1:{i:0;s:14:"access content";}	node_page_default	a:0:{}		1	1	0		node		t			a:0:{}	0			0	
admin			user_access	a:1:{i:0;s:27:"access administration pages";}	system_admin_menu_block_page	a:0:{}		1	1	0		admin	Administration	t			a:0:{}	6			9	modules/system/system.admin.inc
batch			1	a:0:{}	system_batch_page	a:0:{}		1	1	0		batch		t		_system_batch_theme	a:0:{}	0			0	modules/system/system.admin.inc
user			1	a:0:{}	user_page	a:0:{}		1	1	0		user	User account	user_menu_title			a:0:{}	6			-10	modules/user/user.pages.inc
admin/tasks			user_access	a:1:{i:0;s:27:"access administration pages";}	system_admin_menu_block_page	a:0:{}		3	2	1	admin	admin	Tasks	t			a:0:{}	140			-20	modules/system/system.admin.inc
user/login			user_is_anonymous	a:0:{}	user_page	a:0:{}		3	2	1	user	user	Log in	t			a:0:{}	140			0	modules/user/user.pages.inc
admin_menu/flush-cache			user_access	a:1:{i:0;s:12:"flush caches";}	admin_menu_flush_cache	a:0:{}		3	2	0		admin_menu/flush-cache		t			a:0:{}	0			0	sites/all/modules/admin_menu/admin_menu.inc
admin_menu/toggle-modules			user_access	a:1:{i:0;s:18:"administer modules";}	admin_menu_toggle_modules	a:0:{}		3	2	0		admin_menu/toggle-modules		t			a:0:{}	0			0	sites/all/modules/admin_menu/admin_menu.inc
node/add			_node_add_access	a:0:{}	node_add_page	a:0:{}		3	2	0		node/add	Add content	t			a:0:{}	6			0	modules/node/node.pages.inc
admin/compact			user_access	a:1:{i:0;s:27:"access administration pages";}	system_admin_compact_page	a:0:{}		3	2	0		admin/compact	Compact mode	t			a:0:{}	0			0	modules/system/system.admin.inc
filter/tips			1	a:0:{}	filter_tips_long	a:0:{}		3	2	0		filter/tips	Compose tips	t			a:0:{}	20			0	modules/filter/filter.pages.inc
user/register			user_register_access	a:0:{}	drupal_get_form	a:1:{i:0;s:18:"user_register_form";}		3	2	1	user	user	Create new account	t			a:0:{}	132			0	
system/files			1	a:0:{}	file_download	a:1:{i:0;s:7:"private";}		3	2	0		system/files	File download	t			a:0:{}	0			0	
admin/index			user_access	a:1:{i:0;s:27:"access administration pages";}	system_admin_index	a:0:{}		3	2	1	admin	admin	Index	t			a:0:{}	132			-18	modules/system/system.admin.inc
system/temporary			1	a:0:{}	file_download	a:1:{i:0;s:9:"temporary";}		3	2	0		system/temporary	Temporary files	t			a:0:{}	0			0	
system/timezone			1	a:0:{}	system_timezone	a:0:{}		3	2	0		system/timezone	Time zone	t			a:0:{}	0			0	modules/system/system.admin.inc
devel/arguments			user_access	a:1:{i:0;s:24:"access devel information";}	devel_querylog_arguments	a:0:{}		3	2	0		devel/arguments	Arguments query	t			a:0:{}	0	Return a given query, with arguments instead of placeholders. Used by query log		0	sites/all/modules/devel/devel.pages.inc
admin/config			user_access	a:1:{i:0;s:27:"access administration pages";}	system_admin_config_page	a:0:{}		3	2	0		admin/config	Configuration	t			a:0:{}	6	Administer settings.		0	modules/system/system.admin.inc
devel/explain			user_access	a:1:{i:0;s:24:"access devel information";}	devel_querylog_explain	a:0:{}		3	2	0		devel/explain	Explain query	t			a:0:{}	0	Run an EXPLAIN on a given query. Used by query log		0	sites/all/modules/devel/devel.pages.inc
user/logout			user_is_logged_in	a:0:{}	user_logout	a:0:{}		3	2	0		user/logout	Log out	t			a:0:{}	6			10	modules/user/user.pages.inc
user/password			1	a:0:{}	drupal_get_form	a:1:{i:0;s:9:"user_pass";}		3	2	1	user	user	Request new password	t			a:0:{}	132			0	modules/user/user.pages.inc
user/autocomplete			user_access	a:1:{i:0;s:20:"access user profiles";}	user_autocomplete	a:0:{}		3	2	0		user/autocomplete	User autocomplete	t			a:0:{}	0			0	modules/user/user.pages.inc
admin/appearance			user_access	a:1:{i:0;s:17:"administer themes";}	system_themes_page	a:0:{}		3	2	0		admin/appearance	Appearance	t			a:0:{}	6	Select and configure your themes.	left	-6	modules/system/system.admin.inc
admin/content			user_access	a:1:{i:0;s:23:"access content overview";}	drupal_get_form	a:1:{i:0;s:18:"node_admin_content";}		3	2	0		admin/content	Content	t			a:0:{}	6	Find and manage content.		-10	modules/node/node.admin.inc
devel/reference			user_access	a:1:{i:0;s:24:"access devel information";}	devel_function_reference	a:0:{}		3	2	0		devel/reference	Function reference	t			a:0:{}	6	View a list of currently defined user functions with documentation links.		0	sites/all/modules/devel/devel.pages.inc
devel/elements			user_access	a:1:{i:0;s:24:"access devel information";}	devel_elements_page	a:0:{}		3	2	0		devel/elements	Hook_elements()	t			a:0:{}	6	View the active form/render elements for this site.		0	sites/all/modules/devel/devel.pages.inc
admin/modules			user_access	a:1:{i:0;s:18:"administer modules";}	drupal_get_form	a:1:{i:0;s:14:"system_modules";}		3	2	0		admin/modules	Modules	t			a:0:{}	6	Extend site functionality.		-2	modules/system/system.admin.inc
devel/phpinfo			user_access	a:1:{i:0;s:24:"access devel information";}	devel_phpinfo	a:0:{}		3	2	0		devel/phpinfo	PHPinfo()	t			a:0:{}	6	View your server's PHP configuration		0	sites/all/modules/devel/devel.pages.inc
admin/reports			user_access	a:1:{i:0;s:19:"access site reports";}	system_admin_menu_block_page	a:0:{}		3	2	0		admin/reports	Reports	t			a:0:{}	6	View reports, updates, and errors.	left	5	modules/system/system.admin.inc
devel/run-cron			user_access	a:1:{i:0;s:29:"administer site configuration";}	system_run_cron	a:0:{}		3	2	0		devel/run-cron	Run cron	t			a:0:{}	6			0	modules/system/system.admin.inc
devel/session			user_access	a:1:{i:0;s:24:"access devel information";}	devel_session	a:0:{}		3	2	0		devel/session	Session viewer	t			a:0:{}	6	List the contents of $_SESSION.		0	sites/all/modules/devel/devel.pages.inc
admin/structure			user_access	a:1:{i:0;s:27:"access administration pages";}	system_admin_menu_block_page	a:0:{}		3	2	0		admin/structure	Structure	t			a:0:{}	6	Administer blocks, content types, menus, etc.	right	-8	modules/system/system.admin.inc
devel/switch			_devel_switch_user_access	a:1:{i:0;i:2;}	devel_switch_user	a:0:{}		3	2	0		devel/switch	Switch user	t			a:0:{}	0			0	sites/all/modules/devel/devel.pages.inc
system/ajax			1	a:0:{}	ajax_form_callback	a:0:{}	ajax_deliver	3	2	0		system/ajax	AHAH callback	t		ajax_base_page_theme	a:0:{}	0			0	includes/form.inc
admin/people			user_access	a:1:{i:0;s:16:"administer users";}	user_admin	a:1:{i:0;s:4:"list";}		3	2	0		admin/people	People	t			a:0:{}	6	Manage user accounts, roles, and permissions.	left	-4	modules/user/user.admin.inc
node/%	a:1:{i:1;s:9:"node_load";}		node_access	a:2:{i:0;s:4:"view";i:1;i:1;}	node_page_view	a:1:{i:0;i:1;}		2	2	0		node/%		node_page_title	a:1:{i:0;i:1;}		a:0:{}	6			0	
devel/settings			user_access	a:1:{i:0;s:29:"administer site configuration";}	drupal_get_form	a:1:{i:0;s:20:"devel_admin_settings";}		3	2	0		devel/settings	Devel settings	t			a:0:{}	6	Helper functions, pages, and blocks to assist Drupal developers. The devel blocks can be managed via the <a href="/admin/structure/block">block administration</a> page.		0	sites/all/modules/devel/devel.admin.inc
devel/php			user_access	a:1:{i:0;s:16:"execute php code";}	drupal_get_form	a:1:{i:0;s:18:"devel_execute_form";}		3	2	0		devel/php	Execute PHP Code	t			a:0:{}	6	Execute some PHP code		0	sites/all/modules/devel/devel.pages.inc
devel/reinstall			user_access	a:1:{i:0;s:24:"access devel information";}	drupal_get_form	a:1:{i:0;s:15:"devel_reinstall";}		3	2	0		devel/reinstall	Reinstall modules	t			a:0:{}	6	Run hook_uninstall() and then hook_install() for a given module.		0	sites/all/modules/devel/devel.pages.inc
devel/variable			user_access	a:1:{i:0;s:24:"access devel information";}	drupal_get_form	a:1:{i:0;s:19:"devel_variable_form";}		3	2	0		devel/variable	Variable editor	t			a:0:{}	6	Edit and delete site variables.		0	sites/all/modules/devel/devel.pages.inc
user/%	a:1:{i:1;s:9:"user_load";}		user_view_access	a:1:{i:0;i:1;}	user_view_page	a:1:{i:0;i:1;}		2	2	0		user/%	My account	user_page_title	a:1:{i:0;i:1;}		a:0:{}	6			0	
admin/content/node			user_access	a:1:{i:0;s:23:"access content overview";}	drupal_get_form	a:1:{i:0;s:18:"node_admin_content";}		7	3	1	admin/content	admin/content	Content	t			a:0:{}	140			-10	modules/node/node.admin.inc
admin/modules/list			user_access	a:1:{i:0;s:18:"administer modules";}	drupal_get_form	a:1:{i:0;s:14:"system_modules";}		7	3	1	admin/modules	admin/modules	List	t			a:0:{}	140			0	modules/system/system.admin.inc
node/%/view	a:1:{i:1;s:9:"node_load";}		node_access	a:2:{i:0;s:4:"view";i:1;i:1;}	node_page_view	a:1:{i:0;i:1;}		5	3	1	node/%	node/%	View	t			a:0:{}	140			-10	
user/%/view	a:1:{i:1;s:9:"user_load";}		user_view_access	a:1:{i:0;i:1;}	user_view_page	a:1:{i:0;i:1;}		5	3	1	user/%	user/%	View	t			a:0:{}	140			-10	
admin/people/create			user_access	a:1:{i:0;s:16:"administer users";}	user_admin	a:1:{i:0;s:6:"create";}		7	3	1	admin/people	admin/people	Add user	t			a:0:{}	388			0	modules/user/user.admin.inc
admin/appearance/list			user_access	a:1:{i:0;s:17:"administer themes";}	system_themes_page	a:0:{}		7	3	1	admin/appearance	admin/appearance	List	t			a:0:{}	140	Select and configure your theme		-1	modules/system/system.admin.inc
js/admin_menu/cache			user_access	a:1:{i:0;s:26:"access administration menu";}	admin_menu_js_cache	a:0:{}	admin_menu_deliver	7	3	0		js/admin_menu/cache		t			a:0:{}	0			0	
admin/appearance/disable			user_access	a:1:{i:0;s:17:"administer themes";}	system_theme_disable	a:0:{}		7	3	0		admin/appearance/disable	Disable theme	t			a:0:{}	0			0	modules/system/system.admin.inc
admin/appearance/enable			user_access	a:1:{i:0;s:17:"administer themes";}	system_theme_enable	a:0:{}		7	3	0		admin/appearance/enable	Enable theme	t			a:0:{}	0			0	modules/system/system.admin.inc
admin/people/people			user_access	a:1:{i:0;s:16:"administer users";}	user_admin	a:1:{i:0;s:4:"list";}		7	3	1	admin/people	admin/people	List	t			a:0:{}	140	Find and manage people interacting with your site.		-10	modules/user/user.admin.inc
admin/appearance/default			user_access	a:1:{i:0;s:17:"administer themes";}	system_theme_default	a:0:{}		7	3	0		admin/appearance/default	Set default theme	t			a:0:{}	0			0	modules/system/system.admin.inc
admin/modules/uninstall			user_access	a:1:{i:0;s:18:"administer modules";}	drupal_get_form	a:1:{i:0;s:24:"system_modules_uninstall";}		7	3	1	admin/modules	admin/modules	Uninstall	t			a:0:{}	132			20	modules/system/system.admin.inc
admin/structure/types			user_access	a:1:{i:0;s:24:"administer content types";}	node_overview_types	a:0:{}		7	3	0		admin/structure/types	Content types	t			a:0:{}	6	Manage content types, including default status, front page promotion, comment settings, etc.		0	modules/node/content_types.inc
comment/%comment/devel			user_access	a:1:{i:0;s:24:"access devel information";}	devel_load_object	a:2:{i:0;s:7:"comment";i:1;i:1;}		7	3	1		comment/%comment/devel	Devel	t			a:0:{}	132			100	sites/all/modules/devel/devel.pages.inc
node/%/devel	a:1:{i:1;s:9:"node_load";}		user_access	a:1:{i:0;s:24:"access devel information";}	devel_load_object	a:2:{i:0;s:4:"node";i:1;i:1;}		5	3	1	node/%	node/%	Devel	t			a:0:{}	132			100	sites/all/modules/devel/devel.pages.inc
user/%/devel	a:1:{i:1;s:9:"user_load";}		user_access	a:1:{i:0;s:24:"access devel information";}	devel_load_object	a:2:{i:0;s:4:"user";i:1;i:1;}		5	3	1	user/%	user/%	Devel	t			a:0:{}	132			100	sites/all/modules/devel/devel.pages.inc
admin/reports/dblog			user_access	a:1:{i:0;s:19:"access site reports";}	dblog_overview	a:0:{}		7	3	0		admin/reports/dblog	Recent log messages	t			a:0:{}	6	View events that have recently been logged.		-1	modules/dblog/dblog.admin.inc
admin/reports/status			user_access	a:1:{i:0;s:29:"administer site configuration";}	system_status	a:0:{}		7	3	0		admin/reports/status	Status report	t			a:0:{}	6	Get a status report about your site's operation and any detected problems.		-60	modules/system/system.admin.inc
admin/config/administration			user_access	a:1:{i:0;s:27:"access administration pages";}	system_admin_menu_block_page	a:0:{}		7	3	0		admin/config/administration	Administration	t			a:0:{}	6	Administration tools.		0	modules/system/system.admin.inc
admin/structure/block			user_access	a:1:{i:0;s:17:"administer blocks";}	block_admin_display	a:1:{i:0;s:6:"bartik";}		7	3	0		admin/structure/block	Blocks	t			a:0:{}	6	Configure what block content appears in your site's sidebars and other regions.		0	modules/block/block.admin.inc
user/%/cancel	a:1:{i:1;s:9:"user_load";}		user_cancel_access	a:1:{i:0;i:1;}	drupal_get_form	a:2:{i:0;s:24:"user_cancel_confirm_form";i:1;i:1;}		5	3	0		user/%/cancel	Cancel account	t			a:0:{}	6			0	modules/user/user.pages.inc
devel/cache/clear			user_access	a:1:{i:0;s:24:"access devel information";}	devel_cache_clear	a:0:{}		7	3	0		devel/cache/clear	Clear cache	t			a:0:{}	6	Clear the CSS cache and all database cache tables which store page, node, theme and variable caches.		0	sites/all/modules/devel/devel.pages.inc
admin/config/content			user_access	a:1:{i:0;s:27:"access administration pages";}	system_admin_menu_block_page	a:0:{}		7	3	0		admin/config/content	Content authoring	t			a:0:{}	6	Settings related to formatting and authoring content.	left	-15	modules/system/system.admin.inc
admin/config/development			user_access	a:1:{i:0;s:27:"access administration pages";}	system_admin_menu_block_page	a:0:{}		7	3	0		admin/config/development	Development	t			a:0:{}	6	Development tools.	right	-10	modules/system/system.admin.inc
user/%/edit	a:1:{i:1;s:9:"user_load";}		user_edit_access	a:1:{i:0;i:1;}	drupal_get_form	a:2:{i:0;s:17:"user_profile_form";i:1;i:1;}		5	3	1	user/%	user/%	Edit	t			a:0:{}	132			0	modules/user/user.pages.inc
devel/entity/info			user_access	a:1:{i:0;s:24:"access devel information";}	devel_entity_info_page	a:0:{}		7	3	0		devel/entity/info	Entity info	t			a:0:{}	6	View entity information across the whole site.		0	sites/all/modules/devel/devel.pages.inc
devel/field/info			user_access	a:1:{i:0;s:24:"access devel information";}	devel_field_info_page	a:0:{}		7	3	0		devel/field/info	Field info	t			a:0:{}	6	View fields information across the whole site.		0	sites/all/modules/devel/devel.pages.inc
admin/config/media			user_access	a:1:{i:0;s:27:"access administration pages";}	system_admin_menu_block_page	a:0:{}		7	3	0		admin/config/media	Media	t			a:0:{}	6	Media tools.	left	-10	modules/system/system.admin.inc
devel/menu/item			user_access	a:1:{i:0;s:24:"access devel information";}	devel_menu_item	a:0:{}		7	3	0		devel/menu/item	Menu item	t			a:0:{}	6	Details about a given menu item.		0	sites/all/modules/devel/devel.pages.inc
admin/people/permissions			user_access	a:1:{i:0;s:22:"administer permissions";}	drupal_get_form	a:1:{i:0;s:22:"user_admin_permissions";}		7	3	1	admin/people	admin/people	Permissions	t			a:0:{}	132	Determine access to features by selecting permissions for roles.		0	modules/user/user.admin.inc
admin/config/regional			user_access	a:1:{i:0;s:27:"access administration pages";}	system_admin_menu_block_page	a:0:{}		7	3	0		admin/config/regional	Regional and language	t			a:0:{}	6	Regional settings, localization and translation.	left	-5	modules/system/system.admin.inc
node/%/revisions	a:1:{i:1;s:9:"node_load";}		_node_revision_access	a:1:{i:0;i:1;}	node_revision_overview	a:1:{i:0;i:1;}		5	3	1	node/%	node/%	Revisions	t			a:0:{}	132			2	modules/node/node.pages.inc
admin/config/search			user_access	a:1:{i:0;s:27:"access administration pages";}	system_admin_menu_block_page	a:0:{}		7	3	0		admin/config/search	Search and metadata	t			a:0:{}	6	Local site search, metadata and SEO.	left	-10	modules/system/system.admin.inc
admin/appearance/settings			user_access	a:1:{i:0;s:17:"administer themes";}	drupal_get_form	a:1:{i:0;s:21:"system_theme_settings";}		7	3	1	admin/appearance	admin/appearance	Settings	t			a:0:{}	132	Configure default and theme specific settings.		20	modules/system/system.admin.inc
admin/config/system			user_access	a:1:{i:0;s:27:"access administration pages";}	system_admin_menu_block_page	a:0:{}		7	3	0		admin/config/system	System	t			a:0:{}	6	General system related configuration.	right	-20	modules/system/system.admin.inc
devel/theme/registry			user_access	a:1:{i:0;s:24:"access devel information";}	devel_theme_registry	a:0:{}		7	3	0		devel/theme/registry	Theme registry	t			a:0:{}	6	View a list of available theme functions across the whole site.		0	sites/all/modules/devel/devel.pages.inc
admin/reports/access-denied			user_access	a:1:{i:0;s:19:"access site reports";}	dblog_top	a:1:{i:0;s:13:"access denied";}		7	3	0		admin/reports/access-denied	Top 'access denied' errors	t			a:0:{}	6	View 'access denied' errors (403s).		0	modules/dblog/dblog.admin.inc
admin/reports/page-not-found			user_access	a:1:{i:0;s:19:"access site reports";}	dblog_top	a:1:{i:0;s:14:"page not found";}		7	3	0		admin/reports/page-not-found	Top 'page not found' errors	t			a:0:{}	6	View 'page not found' errors (404s).		0	modules/dblog/dblog.admin.inc
admin/config/user-interface			user_access	a:1:{i:0;s:27:"access administration pages";}	system_admin_menu_block_page	a:0:{}		7	3	0		admin/config/user-interface	User interface	t			a:0:{}	6	Tools that enhance the user interface.	right	-15	modules/system/system.admin.inc
admin/config/services			user_access	a:1:{i:0;s:27:"access administration pages";}	system_admin_menu_block_page	a:0:{}		7	3	0		admin/config/services	Web services	t			a:0:{}	6	Tools related to web services.	right	0	modules/system/system.admin.inc
admin/config/workflow			user_access	a:1:{i:0;s:27:"access administration pages";}	system_admin_menu_block_page	a:0:{}		7	3	0		admin/config/workflow	Workflow	t			a:0:{}	6	Content workflow, editorial workflow tools.	right	5	modules/system/system.admin.inc
node/%/delete	a:1:{i:1;s:9:"node_load";}		node_access	a:2:{i:0;s:6:"delete";i:1;i:1;}	drupal_get_form	a:2:{i:0;s:19:"node_delete_confirm";i:1;i:1;}		5	3	2	node/%	node/%	Delete	t			a:0:{}	132			1	modules/node/node.pages.inc
node/%/edit	a:1:{i:1;s:9:"node_load";}		node_access	a:2:{i:0;s:6:"update";i:1;i:1;}	node_page_edit	a:1:{i:0;i:1;}		5	3	3	node/%	node/%	Edit	t			a:0:{}	132			0	modules/node/node.pages.inc
admin/config/people			user_access	a:1:{i:0;s:27:"access administration pages";}	system_admin_menu_block_page	a:0:{}		7	3	0		admin/config/people	People	t			a:0:{}	6	Configure user accounts.	left	-20	modules/system/system.admin.inc
devel/menu/reset			user_access	a:1:{i:0;s:24:"access devel information";}	drupal_get_form	a:1:{i:0;s:18:"devel_menu_rebuild";}		7	3	0		devel/menu/reset	Rebuild menus	t			a:0:{}	6	Rebuild menu based on hook_menu() and revert any custom changes. All menu items return to their default settings.		0	sites/all/modules/devel/devel.pages.inc
admin/appearance/settings/global			user_access	a:1:{i:0;s:17:"administer themes";}	drupal_get_form	a:1:{i:0;s:21:"system_theme_settings";}		15	4	1	admin/appearance/settings	admin/appearance	Global settings	t			a:0:{}	140			-1	modules/system/system.admin.inc
admin/structure/types/list			user_access	a:1:{i:0;s:24:"administer content types";}	node_overview_types	a:0:{}		15	4	1	admin/structure/types	admin/structure/types	List	t			a:0:{}	140			-10	modules/node/content_types.inc
comment/%comment/devel/load			user_access	a:1:{i:0;s:24:"access devel information";}	devel_load_object	a:2:{i:0;s:7:"comment";i:1;i:1;}		15	4	1	comment/%comment/devel	comment/%comment/devel/load	Load	t			a:0:{}	140			0	sites/all/modules/devel/devel.pages.inc
node/%/devel/load	a:1:{i:1;s:9:"node_load";}		user_access	a:1:{i:0;s:24:"access devel information";}	devel_load_object	a:2:{i:0;s:4:"node";i:1;i:1;}		11	4	1	node/%/devel	node/%	Load	t			a:0:{}	140			0	sites/all/modules/devel/devel.pages.inc
user/%/devel/load	a:1:{i:1;s:9:"user_load";}		user_access	a:1:{i:0;s:24:"access devel information";}	devel_load_object	a:2:{i:0;s:4:"user";i:1;i:1;}		11	4	1	user/%/devel	user/%	Load	t			a:0:{}	140			0	sites/all/modules/devel/devel.pages.inc
user/%/edit/account	a:1:{i:1;a:1:{s:18:"user_category_load";a:2:{i:0;s:4:"%map";i:1;s:6:"%index";}}}		user_edit_access	a:1:{i:0;i:1;}	drupal_get_form	a:2:{i:0;s:17:"user_profile_form";i:1;i:1;}		11	4	1	user/%/edit	user/%	Account	t			a:0:{}	140			0	modules/user/user.pages.inc
admin/modules/list/confirm			user_access	a:1:{i:0;s:18:"administer modules";}	drupal_get_form	a:1:{i:0;s:14:"system_modules";}		15	4	0		admin/modules/list/confirm	List	t			a:0:{}	4			0	modules/system/system.admin.inc
admin/people/permissions/list			user_access	a:1:{i:0;s:22:"administer permissions";}	drupal_get_form	a:1:{i:0;s:22:"user_admin_permissions";}		15	4	1	admin/people/permissions	admin/people	Permissions	t			a:0:{}	140	Determine access to features by selecting permissions for roles.		-8	modules/user/user.admin.inc
admin/modules/uninstall/confirm			user_access	a:1:{i:0;s:18:"administer modules";}	drupal_get_form	a:1:{i:0;s:24:"system_modules_uninstall";}		15	4	0		admin/modules/uninstall/confirm	Uninstall	t			a:0:{}	4			0	modules/system/system.admin.inc
admin/reports/status/php			user_access	a:1:{i:0;s:29:"administer site configuration";}	system_php	a:0:{}		15	4	0		admin/reports/status/php	PHP	t			a:0:{}	0			0	modules/system/system.admin.inc
admin/reports/status/run-cron			user_access	a:1:{i:0;s:29:"administer site configuration";}	system_run_cron	a:0:{}		15	4	0		admin/reports/status/run-cron	Run cron	t			a:0:{}	0			0	modules/system/system.admin.inc
admin/config/system/actions			user_access	a:1:{i:0;s:18:"administer actions";}	system_actions_manage	a:0:{}		15	4	0		admin/config/system/actions	Actions	t			a:0:{}	6	Manage the actions defined for your site.		0	modules/system/system.admin.inc
admin/structure/block/add			user_access	a:1:{i:0;s:17:"administer blocks";}	drupal_get_form	a:1:{i:0;s:20:"block_add_block_form";}		15	4	1	admin/structure/block	admin/structure/block	Add block	t			a:0:{}	388			0	modules/block/block.admin.inc
admin/structure/types/add			user_access	a:1:{i:0;s:24:"administer content types";}	drupal_get_form	a:1:{i:0;s:14:"node_type_form";}		15	4	1	admin/structure/types	admin/structure/types	Add content type	t			a:0:{}	388			0	modules/node/content_types.inc
admin/appearance/settings/bartik			_system_themes_access	a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:25:"themes/bartik/bartik.info";s:4:"name";s:6:"bartik";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:6:"Bartik";s:11:"description";s:48:"A flexible, recolorable theme with many regions.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:28:"themes/bartik/css/layout.css";s:13:"css/style.css";s:27:"themes/bartik/css/style.css";s:14:"css/colors.css";s:28:"themes/bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:27:"themes/bartik/css/print.css";}}s:7:"regions";a:17:{s:6:"header";s:6:"Header";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:11:"highlighted";s:11:"Highlighted";s:8:"featured";s:8:"Featured";s:7:"content";s:7:"Content";s:13:"sidebar_first";s:13:"Sidebar first";s:14:"sidebar_second";s:14:"Sidebar second";s:14:"triptych_first";s:14:"Triptych first";s:15:"triptych_middle";s:15:"Triptych middle";s:13:"triptych_last";s:13:"Triptych last";s:18:"footer_firstcolumn";s:19:"Footer first column";s:19:"footer_secondcolumn";s:20:"Footer second column";s:18:"footer_thirdcolumn";s:19:"Footer third column";s:19:"footer_fourthcolumn";s:20:"Footer fourth column";s:6:"footer";s:6:"Footer";}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"0";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:28:"themes/bartik/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:28:"themes/bartik/css/layout.css";s:13:"css/style.css";s:27:"themes/bartik/css/style.css";s:14:"css/colors.css";s:28:"themes/bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:27:"themes/bartik/css/print.css";}}s:6:"engine";s:11:"phptemplate";}}	drupal_get_form	a:2:{i:0;s:21:"system_theme_settings";i:1;s:6:"bartik";}		15	4	1	admin/appearance/settings	admin/appearance	Bartik	t			a:0:{}	132			0	modules/system/system.admin.inc
admin/reports/event/%	a:1:{i:3;N;}		user_access	a:1:{i:0;s:19:"access site reports";}	dblog_event	a:1:{i:0;i:3;}		14	4	0		admin/reports/event/%	Details	t			a:0:{}	6			0	modules/dblog/dblog.admin.inc
taxonomy/term/%taxonomy_term/devel			user_access	a:1:{i:0;s:24:"access devel information";}	devel_load_object	a:3:{i:0;s:13:"taxonomy_term";i:1;i:2;i:2;s:4:"term";}		15	4	1		taxonomy/term/%taxonomy_term/devel	Devel	t			a:0:{}	132			100	sites/all/modules/devel/devel.pages.inc
admin/appearance/settings/garland			_system_themes_access	a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:27:"themes/garland/garland.info";s:4:"name";s:7:"garland";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:7:"Garland";s:11:"description";s:111:"A multi-column theme which can be configured to modify colors and switch between fixed and fluid width layouts.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:8:"settings";a:1:{s:13:"garland_width";s:5:"fluid";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:29:"themes/garland/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:6:"engine";s:11:"phptemplate";}}	drupal_get_form	a:2:{i:0;s:21:"system_theme_settings";i:1;s:7:"garland";}		15	4	1	admin/appearance/settings	admin/appearance	Garland	t			a:0:{}	132			0	modules/system/system.admin.inc
admin/config/people/ip-blocking			user_access	a:1:{i:0;s:18:"block IP addresses";}	system_ip_blocking	a:0:{}		15	4	0		admin/config/people/ip-blocking	IP address blocking	t			a:0:{}	6	Manage blocked IP addresses.		10	modules/system/system.admin.inc
admin/reports/status/rebuild			user_access	a:1:{i:0;s:27:"access administration pages";}	drupal_get_form	a:1:{i:0;s:30:"node_configure_rebuild_confirm";}		15	4	0		admin/reports/status/rebuild	Rebuild permissions	t			a:0:{}	0			0	modules/node/node.admin.inc
comment/%comment/devel/render			user_access	a:1:{i:0;s:24:"access devel information";}	devel_render_object	a:2:{i:0;s:7:"comment";i:1;i:1;}		15	4	1	comment/%comment/devel	comment/%comment/devel/render	Render	t			a:0:{}	132			100	sites/all/modules/devel/devel.pages.inc
node/%/devel/render	a:1:{i:1;s:9:"node_load";}		user_access	a:1:{i:0;s:24:"access devel information";}	devel_render_object	a:2:{i:0;s:4:"node";i:1;i:1;}		11	4	1	node/%/devel	node/%	Render	t			a:0:{}	132			100	sites/all/modules/devel/devel.pages.inc
user/%/devel/render	a:1:{i:1;s:9:"user_load";}		user_access	a:1:{i:0;s:24:"access devel information";}	devel_render_object	a:2:{i:0;s:4:"user";i:1;i:1;}		11	4	1	user/%/devel	user/%	Render	t			a:0:{}	132			100	sites/all/modules/devel/devel.pages.inc
admin/appearance/settings/seven			_system_themes_access	a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:23:"themes/seven/seven.info";s:4:"name";s:5:"seven";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:5:"Seven";s:11:"description";s:65:"A simple one-column, tableless, fluid width administration theme.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:9:"reset.css";s:22:"themes/seven/reset.css";s:9:"style.css";s:22:"themes/seven/style.css";}}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"1";}s:7:"regions";a:5:{s:7:"content";s:7:"Content";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:13:"sidebar_first";s:13:"First sidebar";}s:14:"regions_hidden";a:3:{i:0;s:13:"sidebar_first";i:1;s:8:"page_top";i:2;s:11:"page_bottom";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/seven/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:9:"reset.css";s:22:"themes/seven/reset.css";s:9:"style.css";s:22:"themes/seven/style.css";}}s:6:"engine";s:11:"phptemplate";}}	drupal_get_form	a:2:{i:0;s:21:"system_theme_settings";i:1;s:5:"seven";}		15	4	1	admin/appearance/settings	admin/appearance	Seven	t			a:0:{}	132			0	modules/system/system.admin.inc
admin/appearance/settings/stark			_system_themes_access	a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:23:"themes/stark/stark.info";s:4:"name";s:5:"stark";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:17:{s:4:"name";s:5:"Stark";s:11:"description";s:208:"This theme demonstrates Drupal's default HTML markup and CSS styles. To learn how to build your own theme and override Drupal's default code, see the <a href="http://drupal.org/theme-guide">Theming Guide</a>.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"layout.css";s:23:"themes/stark/layout.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/stark/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"layout.css";s:23:"themes/stark/layout.css";}}s:6:"engine";s:11:"phptemplate";}}	drupal_get_form	a:2:{i:0;s:21:"system_theme_settings";i:1;s:5:"stark";}		15	4	1	admin/appearance/settings	admin/appearance	Stark	t			a:0:{}	132			0	modules/system/system.admin.inc
admin/config/regional/translate			user_access	a:1:{i:0;s:19:"translate interface";}	locale_translate_overview_screen	a:0:{}		15	4	0		admin/config/regional/translate	Translate interface	t			a:0:{}	6	Translate the built in interface and optionally other text.		-5	modules/locale/locale.admin.inc
admin/config/people/accounts			user_access	a:1:{i:0;s:16:"administer users";}	drupal_get_form	a:1:{i:0;s:19:"user_admin_settings";}		15	4	0		admin/config/people/accounts	Account settings	t			a:0:{}	6	Configure default behavior of users, including registration requirements, e-mails, fields, and user pictures.		-10	modules/user/user.admin.inc
admin/config/administration/admin_menu			user_access	a:1:{i:0;s:29:"administer site configuration";}	drupal_get_form	a:1:{i:0;s:25:"admin_menu_theme_settings";}		15	4	0		admin/config/administration/admin_menu	Administration menu	t			a:0:{}	6	Adjust administration menu settings.		0	sites/all/modules/admin_menu/admin_menu.inc
admin/config/search/clean-urls			user_access	a:1:{i:0;s:29:"administer site configuration";}	drupal_get_form	a:1:{i:0;s:25:"system_clean_url_settings";}		15	4	0		admin/config/search/clean-urls	Clean URLs	t			a:0:{}	6	Enable or disable clean URLs for your site.		5	modules/system/system.admin.inc
admin/config/system/cron			user_access	a:1:{i:0;s:29:"administer site configuration";}	drupal_get_form	a:1:{i:0;s:20:"system_cron_settings";}		15	4	0		admin/config/system/cron	Cron	t			a:0:{}	6	Manage automatic site maintenance tasks.		20	modules/system/system.admin.inc
admin/config/regional/date-time			user_access	a:1:{i:0;s:29:"administer site configuration";}	drupal_get_form	a:1:{i:0;s:25:"system_date_time_settings";}		15	4	0		admin/config/regional/date-time	Date and time	t			a:0:{}	6	Configure display formats for date and time.		-15	modules/system/system.admin.inc
admin/config/development/devel			user_access	a:1:{i:0;s:29:"administer site configuration";}	drupal_get_form	a:1:{i:0;s:20:"devel_admin_settings";}		15	4	0		admin/config/development/devel	Devel settings	t			a:0:{}	6	Helper functions, pages, and blocks to assist Drupal developers. The devel blocks can be managed via the <a href="/admin/structure/block">block administration</a> page.		0	sites/all/modules/devel/devel.admin.inc
admin/config/media/file-system			user_access	a:1:{i:0;s:29:"administer site configuration";}	drupal_get_form	a:1:{i:0;s:27:"system_file_system_settings";}		15	4	0		admin/config/media/file-system	File system	t			a:0:{}	6	Tell Drupal where to store uploaded files and how they are accessed.		-10	modules/system/system.admin.inc
admin/config/media/image-toolkit			user_access	a:1:{i:0;s:29:"administer site configuration";}	drupal_get_form	a:1:{i:0;s:29:"system_image_toolkit_settings";}		15	4	0		admin/config/media/image-toolkit	Image toolkit	t			a:0:{}	6	Choose which image toolkit to use if you have installed optional toolkits.		20	modules/system/system.admin.inc
admin/config/regional/language			user_access	a:1:{i:0;s:20:"administer languages";}	drupal_get_form	a:1:{i:0;s:30:"locale_languages_overview_form";}		15	4	0		admin/config/regional/language	Languages	t			a:0:{}	6	Configure languages for content and the user interface.		-10	modules/locale/locale.admin.inc
admin/config/development/logging			user_access	a:1:{i:0;s:29:"administer site configuration";}	drupal_get_form	a:1:{i:0;s:23:"system_logging_settings";}		15	4	0		admin/config/development/logging	Logging and errors	t			a:0:{}	6	Settings for logging and alerts modules. Various modules can route Drupal's system events to different destinations, such as syslog, database, email, etc.		-15	modules/system/system.admin.inc
admin/config/development/maintenance			user_access	a:1:{i:0;s:29:"administer site configuration";}	drupal_get_form	a:1:{i:0;s:28:"system_site_maintenance_mode";}		15	4	0		admin/config/development/maintenance	Maintenance mode	t			a:0:{}	6	Take the site offline for maintenance or bring it back online.		-10	modules/system/system.admin.inc
admin/config/user-interface/modulefilter			user_access	a:1:{i:0;s:24:"administer module filter";}	drupal_get_form	a:1:{i:0;s:22:"module_filter_settings";}		15	4	0		admin/config/user-interface/modulefilter	Module filter	t			a:0:{}	6	Configure how the modules page looks and acts.		0	sites/all/modules/module_filter/module_filter.admin.inc
admin/config/development/performance			user_access	a:1:{i:0;s:29:"administer site configuration";}	drupal_get_form	a:1:{i:0;s:27:"system_performance_settings";}		15	4	0		admin/config/development/performance	Performance	t			a:0:{}	6	Enable or disable page caching for anonymous users and set CSS and JS bandwidth optimization options.		-20	modules/system/system.admin.inc
admin/config/services/rss-publishing			user_access	a:1:{i:0;s:29:"administer site configuration";}	drupal_get_form	a:1:{i:0;s:25:"system_rss_feeds_settings";}		15	4	0		admin/config/services/rss-publishing	RSS publishing	t			a:0:{}	6	Configure the site description, the number of items per feed and whether feeds should be titles/teasers/full-text.		0	modules/system/system.admin.inc
admin/config/regional/settings			user_access	a:1:{i:0;s:29:"administer site configuration";}	drupal_get_form	a:1:{i:0;s:24:"system_regional_settings";}		15	4	0		admin/config/regional/settings	Regional settings	t			a:0:{}	6	Settings for the site's default time zone and country.		-20	modules/system/system.admin.inc
admin/people/permissions/roles			user_access	a:1:{i:0;s:22:"administer permissions";}	drupal_get_form	a:1:{i:0;s:16:"user_admin_roles";}		15	4	1	admin/people/permissions	admin/people	Roles	t			a:0:{}	132	List, edit, or add user roles.		-5	modules/user/user.admin.inc
admin/config/system/site-information			user_access	a:1:{i:0;s:29:"administer site configuration";}	drupal_get_form	a:1:{i:0;s:32:"system_site_information_settings";}		15	4	0		admin/config/system/site-information	Site information	t			a:0:{}	6	Change site name, e-mail address, slogan, default front page, and number of posts per page, error pages.		-20	modules/system/system.admin.inc
admin/config/content/formats			user_access	a:1:{i:0;s:18:"administer filters";}	drupal_get_form	a:1:{i:0;s:21:"filter_admin_overview";}		15	4	0		admin/config/content/formats	Text formats	t			a:0:{}	6	Configure how content input by users is filtered, including allowed HTML tags. Also allows enabling of module-provided filters.		0	modules/filter/filter.admin.inc
devel/variable/edit/%	a:1:{i:3;N;}		user_access	a:1:{i:0;s:24:"access devel information";}	drupal_get_form	a:2:{i:0;s:19:"devel_variable_edit";i:1;i:3;}		14	4	0		devel/variable/edit/%	Variable editor	t			a:0:{}	0			0	sites/all/modules/devel/devel.pages.inc
admin/config/content/formats/list			user_access	a:1:{i:0;s:18:"administer filters";}	drupal_get_form	a:1:{i:0;s:21:"filter_admin_overview";}		31	5	1	admin/config/content/formats	admin/config/content/formats	List	t			a:0:{}	140			0	modules/filter/filter.admin.inc
admin/config/regional/language/overview			user_access	a:1:{i:0;s:20:"administer languages";}	drupal_get_form	a:1:{i:0;s:30:"locale_languages_overview_form";}		31	5	1	admin/config/regional/language	admin/config/regional/language	List	t			a:0:{}	140			0	modules/locale/locale.admin.inc
taxonomy/term/%taxonomy_term/devel/load			user_access	a:1:{i:0;s:24:"access devel information";}	devel_load_object	a:3:{i:0;s:13:"taxonomy_term";i:1;i:2;i:2;s:4:"term";}		31	5	1	taxonomy/term/%taxonomy_term/devel	taxonomy/term/%taxonomy_term/devel/load	Load	t			a:0:{}	140			0	sites/all/modules/devel/devel.pages.inc
admin/config/regional/translate/overview			user_access	a:1:{i:0;s:19:"translate interface";}	locale_translate_overview_screen	a:0:{}		31	5	1	admin/config/regional/translate	admin/config/regional/translate	Overview	t			a:0:{}	140			0	modules/locale/locale.admin.inc
admin/config/people/accounts/settings			user_access	a:1:{i:0;s:16:"administer users";}	drupal_get_form	a:1:{i:0;s:19:"user_admin_settings";}		31	5	1	admin/config/people/accounts	admin/config/people/accounts	Settings	t			a:0:{}	140			-10	modules/user/user.admin.inc
admin/config/regional/language/add			user_access	a:1:{i:0;s:20:"administer languages";}	locale_languages_add_screen	a:0:{}		31	5	1	admin/config/regional/language	admin/config/regional/language	Add language	t			a:0:{}	388			5	modules/locale/locale.admin.inc
admin/config/content/formats/add			user_access	a:1:{i:0;s:18:"administer filters";}	filter_admin_format_page	a:0:{}		31	5	1	admin/config/content/formats	admin/config/content/formats	Add text format	t			a:0:{}	388			1	modules/filter/filter.admin.inc
admin/config/regional/translate/export			user_access	a:1:{i:0;s:19:"translate interface";}	locale_translate_export_screen	a:0:{}		31	5	1	admin/config/regional/translate	admin/config/regional/translate	Export	t			a:0:{}	132			30	modules/locale/locale.admin.inc
admin/config/system/actions/manage			user_access	a:1:{i:0;s:18:"administer actions";}	system_actions_manage	a:0:{}		31	5	1	admin/config/system/actions	admin/config/system/actions	Manage actions	t			a:0:{}	140	Manage the actions defined for your site.		-2	modules/system/system.admin.inc
admin/config/system/actions/orphan			user_access	a:1:{i:0;s:18:"administer actions";}	system_actions_remove_orphans	a:0:{}		31	5	0		admin/config/system/actions/orphan	Remove orphans	t			a:0:{}	0			0	modules/system/system.admin.inc
admin/config/regional/translate/translate			user_access	a:1:{i:0;s:19:"translate interface";}	locale_translate_seek_screen	a:0:{}		31	5	1	admin/config/regional/translate	admin/config/regional/translate	Translate	t			a:0:{}	132			10	modules/locale/locale.admin.inc
admin/config/regional/language/configure/url			user_access	a:1:{i:0;s:20:"administer languages";}	drupal_get_form	a:1:{i:0;s:34:"locale_language_providers_url_form";}		63	6	0		admin/config/regional/language/configure/url	URL language detection configuration	t			a:0:{}	4			0	modules/locale/locale.admin.inc
admin/config/regional/date-time/types/add			user_access	a:1:{i:0;s:29:"administer site configuration";}	drupal_get_form	a:1:{i:0;s:32:"system_add_date_format_type_form";}		63	6	1	admin/config/regional/date-time/types	admin/config/regional/date-time	Add date type	t			a:0:{}	388	Add new date type.		-10	modules/system/system.admin.inc
admin/structure/block/list/bartik			_block_themes_access	a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:25:"themes/bartik/bartik.info";s:4:"name";s:6:"bartik";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:6:"Bartik";s:11:"description";s:48:"A flexible, recolorable theme with many regions.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:28:"themes/bartik/css/layout.css";s:13:"css/style.css";s:27:"themes/bartik/css/style.css";s:14:"css/colors.css";s:28:"themes/bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:27:"themes/bartik/css/print.css";}}s:7:"regions";a:17:{s:6:"header";s:6:"Header";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:11:"highlighted";s:11:"Highlighted";s:8:"featured";s:8:"Featured";s:7:"content";s:7:"Content";s:13:"sidebar_first";s:13:"Sidebar first";s:14:"sidebar_second";s:14:"Sidebar second";s:14:"triptych_first";s:14:"Triptych first";s:15:"triptych_middle";s:15:"Triptych middle";s:13:"triptych_last";s:13:"Triptych last";s:18:"footer_firstcolumn";s:19:"Footer first column";s:19:"footer_secondcolumn";s:20:"Footer second column";s:18:"footer_thirdcolumn";s:19:"Footer third column";s:19:"footer_fourthcolumn";s:20:"Footer fourth column";s:6:"footer";s:6:"Footer";}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"0";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:28:"themes/bartik/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:28:"themes/bartik/css/layout.css";s:13:"css/style.css";s:27:"themes/bartik/css/style.css";s:14:"css/colors.css";s:28:"themes/bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:27:"themes/bartik/css/print.css";}}s:6:"engine";s:11:"phptemplate";}}	block_admin_display	a:1:{i:0;s:6:"bartik";}		31	5	1	admin/structure/block	admin/structure/block	Bartik	t			a:0:{}	140			-10	modules/block/block.admin.inc
admin/config/search/clean-urls/check			1	a:0:{}	drupal_json_output	a:1:{i:0;a:1:{s:6:"status";b:1;}}		31	5	0		admin/config/search/clean-urls/check	Clean URL check	t			a:0:{}	0			0	modules/system/system.admin.inc
admin/config/system/actions/configure			user_access	a:1:{i:0;s:18:"administer actions";}	drupal_get_form	a:1:{i:0;s:24:"system_actions_configure";}		31	5	0		admin/config/system/actions/configure	Configure an advanced action	t			a:0:{}	4			0	modules/system/system.admin.inc
admin/config/regional/language/configure			user_access	a:1:{i:0;s:20:"administer languages";}	drupal_get_form	a:1:{i:0;s:31:"locale_languages_configure_form";}		31	5	1	admin/config/regional/language	admin/config/regional/language	Detection and selection	t			a:0:{}	132			10	modules/locale/locale.admin.inc
admin/config/regional/date-time/formats			user_access	a:1:{i:0;s:29:"administer site configuration";}	system_date_time_formats	a:0:{}		31	5	1	admin/config/regional/date-time	admin/config/regional/date-time	Formats	t			a:0:{}	132	Configure display format strings for date and time.		-9	modules/system/system.admin.inc
admin/structure/block/list/garland			_block_themes_access	a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:27:"themes/garland/garland.info";s:4:"name";s:7:"garland";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:7:"Garland";s:11:"description";s:111:"A multi-column theme which can be configured to modify colors and switch between fixed and fluid width layouts.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:8:"settings";a:1:{s:13:"garland_width";s:5:"fluid";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:29:"themes/garland/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:6:"engine";s:11:"phptemplate";}}	block_admin_display	a:1:{i:0;s:7:"garland";}		31	5	1	admin/structure/block	admin/structure/block	Garland	t			a:0:{}	132			0	modules/block/block.admin.inc
admin/config/development/generate/content			user_access	a:1:{i:0;s:16:"administer nodes";}	drupal_get_form	a:1:{i:0;s:27:"devel_generate_content_form";}		31	5	0		admin/config/development/generate/content	Generate content	t			a:0:{}	6	Generate a given number of nodes and comments. Optionally delete current items.		0	
admin/config/development/generate/menu			user_access	a:1:{i:0;s:15:"administer menu";}	drupal_get_form	a:1:{i:0;s:24:"devel_generate_menu_form";}		31	5	0		admin/config/development/generate/menu	Generate menus	t			a:0:{}	6	Generate a given number of menus and menu links. Optionally delete current menus.		0	
admin/config/development/generate/user			user_access	a:1:{i:0;s:16:"administer users";}	drupal_get_form	a:1:{i:0;s:25:"devel_generate_users_form";}		31	5	0		admin/config/development/generate/user	Generate users	t			a:0:{}	6	Generate a given number of users. Optionally delete current users.		0	
admin/config/regional/translate/import			user_access	a:1:{i:0;s:19:"translate interface";}	drupal_get_form	a:1:{i:0;s:28:"locale_translate_import_form";}		31	5	1	admin/config/regional/translate	admin/config/regional/translate	Import	t			a:0:{}	132			20	modules/locale/locale.admin.inc
admin/config/regional/date-time/locale			user_access	a:1:{i:0;s:29:"administer site configuration";}	locale_date_format_language_overview_page	a:0:{}		31	5	1	admin/config/regional/date-time	admin/config/regional/date-time	Localize	t			a:0:{}	132	Configure date formats for each locale		-8	modules/locale/locale.admin.inc
taxonomy/term/%taxonomy_term/devel/render			user_access	a:1:{i:0;s:24:"access devel information";}	devel_render_object	a:3:{i:0;s:13:"taxonomy_term";i:1;i:2;i:2;s:4:"term";}		31	5	1	taxonomy/term/%taxonomy_term/devel	taxonomy/term/%taxonomy_term/devel/render	Render	t			a:0:{}	132			100	sites/all/modules/devel/devel.pages.inc
user/reset/%/%/%	a:3:{i:2;N;i:3;N;i:4;N;}		1	a:0:{}	drupal_get_form	a:4:{i:0;s:15:"user_pass_reset";i:1;i:2;i:2;i:3;i:3;i:4;}		24	5	0		user/reset/%/%/%	Reset password	t			a:0:{}	0			0	modules/user/user.pages.inc
admin/structure/block/demo/garland			_block_themes_access	a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:27:"themes/garland/garland.info";s:4:"name";s:7:"garland";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:7:"Garland";s:11:"description";s:111:"A multi-column theme which can be configured to modify colors and switch between fixed and fluid width layouts.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:8:"settings";a:1:{s:13:"garland_width";s:5:"fluid";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:29:"themes/garland/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:6:"engine";s:11:"phptemplate";}}	block_admin_demo	a:1:{i:0;s:7:"garland";}		31	5	0		admin/structure/block/demo/garland	Garland	t		_block_custom_theme	a:1:{i:0;s:7:"garland";}	0			0	modules/block/block.admin.inc
admin/config/regional/date-time/formats/add			user_access	a:1:{i:0;s:29:"administer site configuration";}	drupal_get_form	a:1:{i:0;s:34:"system_configure_date_formats_form";}		63	6	1	admin/config/regional/date-time/formats	admin/config/regional/date-time	Add format	t			a:0:{}	388	Allow users to add additional date formats.		-10	modules/system/system.admin.inc
admin/structure/block/list/seven			_block_themes_access	a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:23:"themes/seven/seven.info";s:4:"name";s:5:"seven";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:5:"Seven";s:11:"description";s:65:"A simple one-column, tableless, fluid width administration theme.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:9:"reset.css";s:22:"themes/seven/reset.css";s:9:"style.css";s:22:"themes/seven/style.css";}}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"1";}s:7:"regions";a:5:{s:7:"content";s:7:"Content";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:13:"sidebar_first";s:13:"First sidebar";}s:14:"regions_hidden";a:3:{i:0;s:13:"sidebar_first";i:1;s:8:"page_top";i:2;s:11:"page_bottom";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/seven/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:9:"reset.css";s:22:"themes/seven/reset.css";s:9:"style.css";s:22:"themes/seven/style.css";}}s:6:"engine";s:11:"phptemplate";}}	block_admin_display	a:1:{i:0;s:5:"seven";}		31	5	1	admin/structure/block	admin/structure/block	Seven	t			a:0:{}	132			0	modules/block/block.admin.inc
admin/structure/block/list/stark			_block_themes_access	a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:23:"themes/stark/stark.info";s:4:"name";s:5:"stark";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:17:{s:4:"name";s:5:"Stark";s:11:"description";s:208:"This theme demonstrates Drupal's default HTML markup and CSS styles. To learn how to build your own theme and override Drupal's default code, see the <a href="http://drupal.org/theme-guide">Theming Guide</a>.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"layout.css";s:23:"themes/stark/layout.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/stark/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"layout.css";s:23:"themes/stark/layout.css";}}s:6:"engine";s:11:"phptemplate";}}	block_admin_display	a:1:{i:0;s:5:"stark";}		31	5	1	admin/structure/block	admin/structure/block	Stark	t			a:0:{}	132			0	modules/block/block.admin.inc
admin/config/regional/translate/update			user_access	a:1:{i:0;s:19:"translate interface";}	l10n_update_admin_overview	a:0:{}		31	5	1	admin/config/regional/translate	admin/config/regional/translate	Update	t			a:0:{}	132	Available updates		20	sites/all/modules/l10n_update/l10n_update.admin.inc
node/%/revisions/%/view	a:2:{i:1;a:1:{s:9:"node_load";a:1:{i:0;i:3;}}i:3;N;}		_node_revision_access	a:1:{i:0;i:1;}	node_show	a:2:{i:0;i:1;i:1;b:1;}		21	5	0		node/%/revisions/%/view	Revisions	t			a:0:{}	6			0	
admin/config/regional/language/update			user_access	a:1:{i:0;s:19:"translate interface";}	drupal_get_form	a:1:{i:0;s:31:"l10n_update_admin_settings_form";}		31	5	1	admin/config/regional/language	admin/config/regional/language	Translation updates	t			a:0:{}	132	Automatic update configuration		20	sites/all/modules/l10n_update/l10n_update.admin.inc
admin/config/regional/date-time/types			user_access	a:1:{i:0;s:29:"administer site configuration";}	drupal_get_form	a:1:{i:0;s:25:"system_date_time_settings";}		31	5	1	admin/config/regional/date-time	admin/config/regional/date-time	Types	t			a:0:{}	140	Configure display formats for date and time.		-10	modules/system/system.admin.inc
admin/config/content/formats/%	a:1:{i:4;s:18:"filter_format_load";}		user_access	a:1:{i:0;s:18:"administer filters";}	filter_admin_format_page	a:1:{i:0;i:4;}		30	5	0		admin/config/content/formats/%		filter_admin_format_title	a:1:{i:0;i:4;}		a:0:{}	6			0	modules/filter/filter.admin.inc
node/%/revisions/%/delete	a:2:{i:1;a:1:{s:9:"node_load";a:1:{i:0;i:3;}}i:3;N;}		_node_revision_access	a:2:{i:0;i:1;i:1;s:6:"delete";}	drupal_get_form	a:2:{i:0;s:28:"node_revision_delete_confirm";i:1;i:1;}		21	5	0		node/%/revisions/%/delete	Delete earlier revision	t			a:0:{}	6			0	modules/node/node.pages.inc
admin/structure/types/manage/%	a:1:{i:4;s:14:"node_type_load";}		user_access	a:1:{i:0;s:24:"administer content types";}	drupal_get_form	a:2:{i:0;s:14:"node_type_form";i:1;i:4;}		30	5	0		admin/structure/types/manage/%	Edit content type	node_type_page_title	a:1:{i:0;i:4;}		a:0:{}	6			0	modules/node/content_types.inc
node/%/revisions/%/revert	a:2:{i:1;a:1:{s:9:"node_load";a:1:{i:0;i:3;}}i:3;N;}		_node_revision_access	a:2:{i:0;i:1;i:1;s:6:"update";}	drupal_get_form	a:2:{i:0;s:28:"node_revision_revert_confirm";i:1;i:1;}		21	5	0		node/%/revisions/%/revert	Revert to earlier revision	t			a:0:{}	6			0	modules/node/node.pages.inc
admin/structure/block/demo/bartik			_block_themes_access	a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:25:"themes/bartik/bartik.info";s:4:"name";s:6:"bartik";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:6:"Bartik";s:11:"description";s:48:"A flexible, recolorable theme with many regions.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:28:"themes/bartik/css/layout.css";s:13:"css/style.css";s:27:"themes/bartik/css/style.css";s:14:"css/colors.css";s:28:"themes/bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:27:"themes/bartik/css/print.css";}}s:7:"regions";a:17:{s:6:"header";s:6:"Header";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:11:"highlighted";s:11:"Highlighted";s:8:"featured";s:8:"Featured";s:7:"content";s:7:"Content";s:13:"sidebar_first";s:13:"Sidebar first";s:14:"sidebar_second";s:14:"Sidebar second";s:14:"triptych_first";s:14:"Triptych first";s:15:"triptych_middle";s:15:"Triptych middle";s:13:"triptych_last";s:13:"Triptych last";s:18:"footer_firstcolumn";s:19:"Footer first column";s:19:"footer_secondcolumn";s:20:"Footer second column";s:18:"footer_thirdcolumn";s:19:"Footer third column";s:19:"footer_fourthcolumn";s:20:"Footer fourth column";s:6:"footer";s:6:"Footer";}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"0";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:28:"themes/bartik/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:28:"themes/bartik/css/layout.css";s:13:"css/style.css";s:27:"themes/bartik/css/style.css";s:14:"css/colors.css";s:28:"themes/bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:27:"themes/bartik/css/print.css";}}s:6:"engine";s:11:"phptemplate";}}	block_admin_demo	a:1:{i:0;s:6:"bartik";}		31	5	0		admin/structure/block/demo/bartik	Bartik	t		_block_custom_theme	a:1:{i:0;s:6:"bartik";}	0			0	modules/block/block.admin.inc
admin/structure/block/demo/seven			_block_themes_access	a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:23:"themes/seven/seven.info";s:4:"name";s:5:"seven";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:18:{s:4:"name";s:5:"Seven";s:11:"description";s:65:"A simple one-column, tableless, fluid width administration theme.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:9:"reset.css";s:22:"themes/seven/reset.css";s:9:"style.css";s:22:"themes/seven/style.css";}}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"1";}s:7:"regions";a:5:{s:7:"content";s:7:"Content";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:13:"sidebar_first";s:13:"First sidebar";}s:14:"regions_hidden";a:3:{i:0;s:13:"sidebar_first";i:1;s:8:"page_top";i:2;s:11:"page_bottom";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/seven/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:9:"reset.css";s:22:"themes/seven/reset.css";s:9:"style.css";s:22:"themes/seven/style.css";}}s:6:"engine";s:11:"phptemplate";}}	block_admin_demo	a:1:{i:0;s:5:"seven";}		31	5	0		admin/structure/block/demo/seven	Seven	t		_block_custom_theme	a:1:{i:0;s:5:"seven";}	0			0	modules/block/block.admin.inc
admin/structure/block/demo/stark			_block_themes_access	a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:23:"themes/stark/stark.info";s:4:"name";s:5:"stark";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:17:{s:4:"name";s:5:"Stark";s:11:"description";s:208:"This theme demonstrates Drupal's default HTML markup and CSS styles. To learn how to build your own theme and override Drupal's default code, see the <a href="http://drupal.org/theme-guide">Theming Guide</a>.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"layout.css";s:23:"themes/stark/layout.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/stark/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"layout.css";s:23:"themes/stark/layout.css";}}s:6:"engine";s:11:"phptemplate";}}	block_admin_demo	a:1:{i:0;s:5:"stark";}		31	5	0		admin/structure/block/demo/stark	Stark	t		_block_custom_theme	a:1:{i:0;s:5:"stark";}	0			0	modules/block/block.admin.inc
admin/structure/types/manage/%/edit	a:1:{i:4;s:14:"node_type_load";}		user_access	a:1:{i:0;s:24:"administer content types";}	drupal_get_form	a:2:{i:0;s:14:"node_type_form";i:1;i:4;}		61	6	1	admin/structure/types/manage/%	admin/structure/types/manage/%	Edit	t			a:0:{}	140			0	modules/node/content_types.inc
admin/config/regional/date-time/formats/lookup			user_access	a:1:{i:0;s:29:"administer site configuration";}	system_date_time_lookup	a:0:{}		63	6	0		admin/config/regional/date-time/formats/lookup	Date and time lookup	t			a:0:{}	0			0	modules/system/system.admin.inc
admin/structure/types/manage/%/delete	a:1:{i:4;s:14:"node_type_load";}		user_access	a:1:{i:0;s:24:"administer content types";}	drupal_get_form	a:2:{i:0;s:24:"node_type_delete_confirm";i:1;i:4;}		61	6	0		admin/structure/types/manage/%/delete	Delete	t			a:0:{}	6			0	modules/node/content_types.inc
admin/people/permissions/roles/edit/%	a:1:{i:5;s:14:"user_role_load";}		user_role_edit_access	a:1:{i:0;i:5;}	drupal_get_form	a:2:{i:0;s:15:"user_admin_role";i:1;i:5;}		62	6	0		admin/people/permissions/roles/edit/%	Edit role	t			a:0:{}	6			0	modules/user/user.admin.inc
admin/structure/block/list/garland/add			user_access	a:1:{i:0;s:17:"administer blocks";}	drupal_get_form	a:1:{i:0;s:20:"block_add_block_form";}		63	6	1	admin/structure/block/list/garland	admin/structure/block	Add block	t			a:0:{}	388			0	modules/block/block.admin.inc
admin/structure/block/list/seven/add			user_access	a:1:{i:0;s:17:"administer blocks";}	drupal_get_form	a:1:{i:0;s:20:"block_add_block_form";}		63	6	1	admin/structure/block/list/seven	admin/structure/block	Add block	t			a:0:{}	388			0	modules/block/block.admin.inc
admin/structure/block/list/stark/add			user_access	a:1:{i:0;s:17:"administer blocks";}	drupal_get_form	a:1:{i:0;s:20:"block_add_block_form";}		63	6	1	admin/structure/block/list/stark	admin/structure/block	Add block	t			a:0:{}	388			0	modules/block/block.admin.inc
admin/structure/block/manage/%/%	a:2:{i:4;N;i:5;N;}		user_access	a:1:{i:0;s:17:"administer blocks";}	drupal_get_form	a:3:{i:0;s:21:"block_admin_configure";i:1;i:4;i:2;i:5;}		60	6	0		admin/structure/block/manage/%/%	Configure block	t			a:0:{}	6			0	modules/block/block.admin.inc
admin/config/regional/language/delete/%	a:1:{i:5;N;}		user_access	a:1:{i:0;s:20:"administer languages";}	drupal_get_form	a:2:{i:0;s:28:"locale_languages_delete_form";i:1;i:5;}		62	6	0		admin/config/regional/language/delete/%	Confirm	t			a:0:{}	6			0	modules/locale/locale.admin.inc
admin/config/people/ip-blocking/delete/%	a:1:{i:5;s:15:"blocked_ip_load";}		user_access	a:1:{i:0;s:18:"block IP addresses";}	drupal_get_form	a:2:{i:0;s:25:"system_ip_blocking_delete";i:1;i:5;}		62	6	0		admin/config/people/ip-blocking/delete/%	Delete IP address	t			a:0:{}	6			0	modules/system/system.admin.inc
admin/config/regional/translate/delete/%	a:1:{i:5;N;}		user_access	a:1:{i:0;s:19:"translate interface";}	locale_translate_delete_page	a:1:{i:0;i:5;}		62	6	0		admin/config/regional/translate/delete/%	Delete string	t			a:0:{}	6			0	modules/locale/locale.admin.inc
admin/config/regional/language/edit/%	a:1:{i:5;N;}		user_access	a:1:{i:0;s:20:"administer languages";}	drupal_get_form	a:2:{i:0;s:26:"locale_languages_edit_form";i:1;i:5;}		62	6	0		admin/config/regional/language/edit/%	Edit language	t			a:0:{}	6			0	modules/locale/locale.admin.inc
admin/config/regional/translate/edit/%	a:1:{i:5;N;}		user_access	a:1:{i:0;s:19:"translate interface";}	drupal_get_form	a:2:{i:0;s:26:"locale_translate_edit_form";i:1;i:5;}		62	6	0		admin/config/regional/translate/edit/%	Edit string	t			a:0:{}	6			0	modules/locale/locale.admin.inc
admin/config/regional/language/configure/session			user_access	a:1:{i:0;s:20:"administer languages";}	drupal_get_form	a:1:{i:0;s:38:"locale_language_providers_session_form";}		63	6	0		admin/config/regional/language/configure/session	Session language detection configuration	t			a:0:{}	4			0	modules/locale/locale.admin.inc
user/%/cancel/confirm/%/%	a:3:{i:1;s:9:"user_load";i:4;N;i:5;N;}		user_cancel_access	a:1:{i:0;i:1;}	user_cancel_confirm	a:3:{i:0;i:1;i:1;i:4;i:2;i:5;}		44	6	0		user/%/cancel/confirm/%/%	Confirm account cancellation	t			a:0:{}	6			0	modules/user/user.pages.inc
admin/config/system/actions/delete/%	a:1:{i:5;s:12:"actions_load";}		user_access	a:1:{i:0;s:18:"administer actions";}	drupal_get_form	a:2:{i:0;s:26:"system_actions_delete_form";i:1;i:5;}		62	6	0		admin/config/system/actions/delete/%	Delete action	t			a:0:{}	6	Delete an action.		0	modules/system/system.admin.inc
admin/people/permissions/roles/delete/%	a:1:{i:5;s:14:"user_role_load";}		user_role_edit_access	a:1:{i:0;i:5;}	drupal_get_form	a:2:{i:0;s:30:"user_admin_role_delete_confirm";i:1;i:5;}		62	6	0		admin/people/permissions/roles/delete/%	Delete role	t			a:0:{}	6			0	modules/user/user.admin.inc
admin/config/content/formats/%/disable	a:1:{i:4;s:18:"filter_format_load";}		_filter_disable_format_access	a:1:{i:0;i:4;}	drupal_get_form	a:2:{i:0;s:20:"filter_admin_disable";i:1;i:4;}		61	6	0		admin/config/content/formats/%/disable	Disable text format	t			a:0:{}	6			0	modules/filter/filter.admin.inc
admin/structure/block/manage/%/%/configure	a:2:{i:4;N;i:5;N;}		user_access	a:1:{i:0;s:17:"administer blocks";}	drupal_get_form	a:3:{i:0;s:21:"block_admin_configure";i:1;i:4;i:2;i:5;}		121	7	2	admin/structure/block/manage/%/%	admin/structure/block/manage/%/%	Configure block	t			a:0:{}	140			0	modules/block/block.admin.inc
admin/structure/block/manage/%/%/delete	a:2:{i:4;N;i:5;N;}		user_access	a:1:{i:0;s:17:"administer blocks";}	drupal_get_form	a:3:{i:0;s:25:"block_custom_block_delete";i:1;i:4;i:2;i:5;}		121	7	0	admin/structure/block/manage/%/%	admin/structure/block/manage/%/%	Delete block	t			a:0:{}	132			0	modules/block/block.admin.inc
admin/config/regional/date-time/formats/%/delete	a:1:{i:5;N;}		user_access	a:1:{i:0;s:29:"administer site configuration";}	drupal_get_form	a:2:{i:0;s:30:"system_date_delete_format_form";i:1;i:5;}		125	7	0		admin/config/regional/date-time/formats/%/delete	Delete date format	t			a:0:{}	6	Allow users to delete a configured date format.		0	modules/system/system.admin.inc
admin/config/regional/date-time/types/%/delete	a:1:{i:5;N;}		user_access	a:1:{i:0;s:29:"administer site configuration";}	drupal_get_form	a:2:{i:0;s:35:"system_delete_date_format_type_form";i:1;i:5;}		125	7	0		admin/config/regional/date-time/types/%/delete	Delete date type	t			a:0:{}	6	Allow users to delete a configured date type.		0	modules/system/system.admin.inc
admin/config/regional/date-time/formats/%/edit	a:1:{i:5;N;}		user_access	a:1:{i:0;s:29:"administer site configuration";}	drupal_get_form	a:2:{i:0;s:34:"system_configure_date_formats_form";i:1;i:5;}		125	7	0		admin/config/regional/date-time/formats/%/edit	Edit date format	t			a:0:{}	6	Allow users to edit a configured date format.		0	modules/system/system.admin.inc
admin/config/regional/date-time/locale/%/edit	a:1:{i:5;N;}		user_access	a:1:{i:0;s:29:"administer site configuration";}	drupal_get_form	a:2:{i:0;s:23:"locale_date_format_form";i:1;i:5;}		125	7	0		admin/config/regional/date-time/locale/%/edit	Localize date formats	t			a:0:{}	6	Configure date formats for each locale		0	modules/locale/locale.admin.inc
admin/config/regional/date-time/locale/%/reset	a:1:{i:5;N;}		user_access	a:1:{i:0;s:29:"administer site configuration";}	drupal_get_form	a:2:{i:0;s:29:"locale_date_format_reset_form";i:1;i:5;}		125	7	0		admin/config/regional/date-time/locale/%/reset	Reset date formats	t			a:0:{}	6	Reset localized date formats to global defaults		0	modules/locale/locale.admin.inc
\.


--
-- Data for Name: node; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY node (nid, vid, type, language, title, uid, status, created, changed, comment, promote, sticky, tnid, translate) FROM stdin;
\.


--
-- Data for Name: node_access; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY node_access (nid, gid, realm, grant_view, grant_update, grant_delete) FROM stdin;
0	0	all	1	0	0
\.


--
-- Name: node_nid_seq; Type: SEQUENCE SET; Schema: public; Owner: drupal
--

SELECT pg_catalog.setval('node_nid_seq', 1, false);


--
-- Data for Name: node_revision; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY node_revision (nid, vid, uid, title, log, "timestamp", status, comment, promote, sticky) FROM stdin;
\.


--
-- Name: node_revision_vid_seq; Type: SEQUENCE SET; Schema: public; Owner: drupal
--

SELECT pg_catalog.setval('node_revision_vid_seq', 1, false);


--
-- Data for Name: node_type; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY node_type (type, name, base, module, description, help, has_title, title_label, custom, modified, locked, disabled, orig_type) FROM stdin;
\.


--
-- Data for Name: queue; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY queue (item_id, name, data, expire, created) FROM stdin;
\.


--
-- Name: queue_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: drupal
--

SELECT pg_catalog.setval('queue_item_id_seq', 9, true);


--
-- Data for Name: registry; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY registry (name, type, filename, module, weight) FROM stdin;
ArchiverTar	class	modules/system/system.archiver.inc	system	0
ArchiverZip	class	modules/system/system.archiver.inc	system	0
DefaultMailSystem	class	modules/system/system.mail.inc	system	0
TestingMailSystem	class	modules/system/system.mail.inc	system	0
DrupalQueue	class	modules/system/system.queue.inc	system	0
DrupalQueueInterface	interface	modules/system/system.queue.inc	system	0
DrupalReliableQueueInterface	interface	modules/system/system.queue.inc	system	0
SystemQueue	class	modules/system/system.queue.inc	system	0
MemoryQueue	class	modules/system/system.queue.inc	system	0
Archive_Tar	class	modules/system/system.tar.inc	system	0
ModuleUpdater	class	modules/system/system.updater.inc	system	0
ThemeUpdater	class	modules/system/system.updater.inc	system	0
ModuleTestCase	class	modules/system/system.test	system	0
EnableDisableTestCase	class	modules/system/system.test	system	0
HookRequirementsTestCase	class	modules/system/system.test	system	0
ModuleDependencyTestCase	class	modules/system/system.test	system	0
ModuleVersionTestCase	class	modules/system/system.test	system	0
ModuleRequiredTestCase	class	modules/system/system.test	system	0
IPAddressBlockingTestCase	class	modules/system/system.test	system	0
CronRunTestCase	class	modules/system/system.test	system	0
CronQueueTestCase	class	modules/system/system.test	system	0
AdminMetaTagTestCase	class	modules/system/system.test	system	0
AccessDeniedTestCase	class	modules/system/system.test	system	0
PageNotFoundTestCase	class	modules/system/system.test	system	0
SiteMaintenanceTestCase	class	modules/system/system.test	system	0
DateTimeFunctionalTest	class	modules/system/system.test	system	0
PageTitleFiltering	class	modules/system/system.test	system	0
FrontPageTestCase	class	modules/system/system.test	system	0
SystemBlockTestCase	class	modules/system/system.test	system	0
SystemMainContentFallback	class	modules/system/system.test	system	0
SystemThemeFunctionalTest	class	modules/system/system.test	system	0
QueueTestCase	class	modules/system/system.test	system	0
TokenReplaceTestCase	class	modules/system/system.test	system	0
InfoFileParserTestCase	class	modules/system/system.test	system	0
SystemInfoAlterTestCase	class	modules/system/system.test	system	0
UpdateScriptFunctionalTest	class	modules/system/system.test	system	0
FloodFunctionalTest	class	modules/system/system.test	system	0
RetrieveFileTestCase	class	modules/system/system.test	system	0
ShutdownFunctionsTest	class	modules/system/system.test	system	0
SystemAdminTestCase	class	modules/system/system.test	system	0
SystemAuthorizeCase	class	modules/system/system.test	system	0
SystemIndexPhpTest	class	modules/system/system.test	system	0
TokenScanTest	class	modules/system/system.test	system	0
SystemValidTokenTest	class	modules/system/system.test	system	0
UserController	class	modules/user/user.module	user	0
UserRegistrationTestCase	class	modules/user/user.test	user	0
UserValidationTestCase	class	modules/user/user.test	user	0
UserLoginTestCase	class	modules/user/user.test	user	0
UserPasswordResetTestCase	class	modules/user/user.test	user	0
UserCancelTestCase	class	modules/user/user.test	user	0
UserPictureTestCase	class	modules/user/user.test	user	0
UserPermissionsTestCase	class	modules/user/user.test	user	0
UserAdminTestCase	class	modules/user/user.test	user	0
UserTimeZoneFunctionalTest	class	modules/user/user.test	user	0
UserAutocompleteTestCase	class	modules/user/user.test	user	0
UserAccountLinksUnitTests	class	modules/user/user.test	user	0
UserBlocksUnitTests	class	modules/user/user.test	user	0
UserSaveTestCase	class	modules/user/user.test	user	0
UserCreateTestCase	class	modules/user/user.test	user	0
UserEditTestCase	class	modules/user/user.test	user	0
UserSignatureTestCase	class	modules/user/user.test	user	0
UserEditedOwnAccountTestCase	class	modules/user/user.test	user	0
UserRoleAdminTestCase	class	modules/user/user.test	user	0
UserTokenReplaceTestCase	class	modules/user/user.test	user	0
UserUserSearchTestCase	class	modules/user/user.test	user	0
UserRolesAssignmentTestCase	class	modules/user/user.test	user	0
UserAuthmapAssignmentTestCase	class	modules/user/user.test	user	0
UserValidateCurrentPassCustomForm	class	modules/user/user.test	user	0
FileTransfer	class	includes/filetransfer/filetransfer.inc		0
FileTransferException	class	includes/filetransfer/filetransfer.inc		0
FileTransferChmodInterface	interface	includes/filetransfer/filetransfer.inc		0
SkipDotsRecursiveDirectoryIterator	class	includes/filetransfer/filetransfer.inc		0
FileTransferFTP	class	includes/filetransfer/ftp.inc		0
FileTransferFTPExtension	class	includes/filetransfer/ftp.inc		0
FileTransferLocal	class	includes/filetransfer/local.inc		0
FileTransferSSH	class	includes/filetransfer/ssh.inc		0
DatabaseConnection_sqlite	class	includes/database/sqlite/database.inc		0
DatabaseStatement_sqlite	class	includes/database/sqlite/database.inc		0
DatabaseTasks_sqlite	class	includes/database/sqlite/install.inc		0
InsertQuery_sqlite	class	includes/database/sqlite/query.inc		0
UpdateQuery_sqlite	class	includes/database/sqlite/query.inc		0
DeleteQuery_sqlite	class	includes/database/sqlite/query.inc		0
TruncateQuery_sqlite	class	includes/database/sqlite/query.inc		0
DatabaseSchema_sqlite	class	includes/database/sqlite/schema.inc		0
SelectQuery_sqlite	class	includes/database/sqlite/select.inc		0
DatabaseConnection_pgsql	class	includes/database/pgsql/database.inc		0
DatabaseTasks_pgsql	class	includes/database/pgsql/install.inc		0
InsertQuery_pgsql	class	includes/database/pgsql/query.inc		0
UpdateQuery_pgsql	class	includes/database/pgsql/query.inc		0
DatabaseSchema_pgsql	class	includes/database/pgsql/schema.inc		0
SelectQuery_pgsql	class	includes/database/pgsql/select.inc		0
DatabaseConnection_mysql	class	includes/database/mysql/database.inc		0
DatabaseTasks_mysql	class	includes/database/mysql/install.inc		0
InsertQuery_mysql	class	includes/database/mysql/query.inc		0
TruncateQuery_mysql	class	includes/database/mysql/query.inc		0
DatabaseSchema_mysql	class	includes/database/mysql/schema.inc		0
DatabaseConnection	class	includes/database/database.inc		0
Database	class	includes/database/database.inc		0
DatabaseTransactionNoActiveException	class	includes/database/database.inc		0
DatabaseTransactionNameNonUniqueException	class	includes/database/database.inc		0
DatabaseTransactionCommitFailedException	class	includes/database/database.inc		0
DatabaseTransactionExplicitCommitNotAllowedException	class	includes/database/database.inc		0
DatabaseTransactionOutOfOrderException	class	includes/database/database.inc		0
InvalidMergeQueryException	class	includes/database/database.inc		0
FieldsOverlapException	class	includes/database/database.inc		0
NoFieldsException	class	includes/database/database.inc		0
DatabaseConnectionNotDefinedException	class	includes/database/database.inc		0
DatabaseDriverNotSpecifiedException	class	includes/database/database.inc		0
DatabaseTransaction	class	includes/database/database.inc		0
DatabaseStatementInterface	interface	includes/database/database.inc		0
DatabaseStatementBase	class	includes/database/database.inc		0
DatabaseStatementEmpty	class	includes/database/database.inc		0
DatabaseLog	class	includes/database/log.inc		0
DatabaseStatementPrefetch	class	includes/database/prefetch.inc		0
QueryConditionInterface	interface	includes/database/query.inc		0
QueryAlterableInterface	interface	includes/database/query.inc		0
QueryPlaceholderInterface	interface	includes/database/query.inc		0
Query	class	includes/database/query.inc		0
InsertQuery	class	includes/database/query.inc		0
DeleteQuery	class	includes/database/query.inc		0
TruncateQuery	class	includes/database/query.inc		0
UpdateQuery	class	includes/database/query.inc		0
MergeQuery	class	includes/database/query.inc		0
DatabaseCondition	class	includes/database/query.inc		0
DatabaseSchema	class	includes/database/schema.inc		0
DatabaseSchemaObjectExistsException	class	includes/database/schema.inc		0
DatabaseSchemaObjectDoesNotExistException	class	includes/database/schema.inc		0
QueryExtendableInterface	interface	includes/database/select.inc		0
SelectQueryInterface	interface	includes/database/select.inc		0
SelectQueryExtender	class	includes/database/select.inc		0
SelectQuery	class	includes/database/select.inc		0
ArchiverInterface	interface	includes/archiver.inc		0
BatchQueue	class	includes/batch.queue.inc		0
BatchMemoryQueue	class	includes/batch.queue.inc		0
DrupalCacheArray	class	includes/bootstrap.inc		0
SchemaCache	class	includes/bootstrap.inc		0
DrupalFakeCache	class	includes/cache-install.inc		0
DrupalCacheInterface	interface	includes/cache.inc		0
DrupalDatabaseCache	class	includes/cache.inc		0
DrupalEntityControllerInterface	interface	includes/entity.inc		0
DrupalDefaultEntityController	class	includes/entity.inc		0
EntityFieldQueryException	class	includes/entity.inc		0
EntityFieldQuery	class	includes/entity.inc		0
EntityMalformedException	class	includes/entity.inc		0
DatabaseTasks	class	includes/install.inc		0
DatabaseTaskException	class	includes/install.inc		0
MailSystemInterface	interface	includes/mail.inc		0
PagerDefault	class	includes/pager.inc		0
StreamWrapperInterface	interface	includes/stream_wrappers.inc		0
DrupalStreamWrapperInterface	interface	includes/stream_wrappers.inc		0
DrupalLocalStreamWrapper	class	includes/stream_wrappers.inc		0
DrupalPublicStreamWrapper	class	includes/stream_wrappers.inc		0
DrupalPrivateStreamWrapper	class	includes/stream_wrappers.inc		0
DrupalTemporaryStreamWrapper	class	includes/stream_wrappers.inc		0
TableSort	class	includes/tablesort.inc		0
ThemeRegistry	class	includes/theme.inc		0
DrupalUpdateException	class	includes/update.inc		0
DrupalUpdaterInterface	interface	includes/updater.inc		0
Updater	class	includes/updater.inc		0
UpdaterException	class	includes/updater.inc		0
UpdaterFileTransferException	class	includes/updater.inc		0
FieldSqlStorageTestCase	class	modules/field/modules/field_sql_storage/field_sql_storage.test	field_sql_storage	0
FilterCRUDTestCase	class	modules/filter/filter.test	filter	0
FilterAdminTestCase	class	modules/filter/filter.test	filter	0
FilterFormatAccessTestCase	class	modules/filter/filter.test	filter	0
FilterDefaultFormatTestCase	class	modules/filter/filter.test	filter	0
FilterNoFormatTestCase	class	modules/filter/filter.test	filter	0
FilterSecurityTestCase	class	modules/filter/filter.test	filter	0
FilterUnitTestCase	class	modules/filter/filter.test	filter	0
FilterHooksTestCase	class	modules/filter/filter.test	filter	0
FilterSettingsTestCase	class	modules/filter/filter.test	filter	0
NodeController	class	modules/node/node.module	node	0
NodeWebTestCase	class	modules/node/node.test	node	0
NodeLoadMultipleTestCase	class	modules/node/node.test	node	0
NodeLoadHooksTestCase	class	modules/node/node.test	node	0
NodeRevisionsTestCase	class	modules/node/node.test	node	0
PageEditTestCase	class	modules/node/node.test	node	0
PagePreviewTestCase	class	modules/node/node.test	node	0
NodeCreationTestCase	class	modules/node/node.test	node	0
PageViewTestCase	class	modules/node/node.test	node	0
SummaryLengthTestCase	class	modules/node/node.test	node	0
NodeTitleXSSTestCase	class	modules/node/node.test	node	0
NodeBlockTestCase	class	modules/node/node.test	node	0
NodePostSettingsTestCase	class	modules/node/node.test	node	0
NodeRSSContentTestCase	class	modules/node/node.test	node	0
NodeAccessTestCase	class	modules/node/node.test	node	0
NodeAccessRecordsTestCase	class	modules/node/node.test	node	0
NodeAccessBaseTableTestCase	class	modules/node/node.test	node	0
NodeSaveTestCase	class	modules/node/node.test	node	0
NodeTypeTestCase	class	modules/node/node.test	node	0
NodeTypePersistenceTestCase	class	modules/node/node.test	node	0
NodeAccessRebuildTestCase	class	modules/node/node.test	node	0
NodeAdminTestCase	class	modules/node/node.test	node	0
NodeTitleTestCase	class	modules/node/node.test	node	0
NodeFeedTestCase	class	modules/node/node.test	node	0
NodeBlockFunctionalTest	class	modules/node/node.test	node	0
MultiStepNodeFormBasicOptionsTest	class	modules/node/node.test	node	0
NodeBuildContent	class	modules/node/node.test	node	0
NodeQueryAlter	class	modules/node/node.test	node	0
NodeEntityFieldQueryAlter	class	modules/node/node.test	node	0
NodeTokenReplaceTestCase	class	modules/node/node.test	node	0
NodeRevisionPermissionsTestCase	class	modules/node/node.test	node	0
NodeAccessPagerTestCase	class	modules/node/node.test	node	0
NodeAccessFieldTestCase	class	modules/node/node.test	node	0
NodeEntityViewModeAlterTest	class	modules/node/node.test	node	0
NodePageCacheTest	class	modules/node/node.test	node	0
FieldException	class	modules/field/field.module	field	0
FieldUpdateForbiddenException	class	modules/field/field.module	field	0
FieldValidationException	class	modules/field/field.attach.inc	field	0
FieldInfo	class	modules/field/field.info.class.inc	field	0
FieldTestCase	class	modules/field/tests/field.test	field	0
FieldAttachTestCase	class	modules/field/tests/field.test	field	0
FieldAttachStorageTestCase	class	modules/field/tests/field.test	field	0
FieldAttachOtherTestCase	class	modules/field/tests/field.test	field	0
FieldInfoTestCase	class	modules/field/tests/field.test	field	0
FieldFormTestCase	class	modules/field/tests/field.test	field	0
FieldDisplayAPITestCase	class	modules/field/tests/field.test	field	0
FieldCrudTestCase	class	modules/field/tests/field.test	field	0
FieldInstanceCrudTestCase	class	modules/field/tests/field.test	field	0
FieldTranslationsTestCase	class	modules/field/tests/field.test	field	0
FieldBulkDeleteTestCase	class	modules/field/tests/field.test	field	0
EntityPropertiesTestCase	class	modules/field/tests/field.test	field	0
TextFieldTestCase	class	modules/field/modules/text/text.test	text	0
TextSummaryTestCase	class	modules/field/modules/text/text.test	text	0
TextTranslationTestCase	class	modules/field/modules/text/text.test	text	0
BlockTestCase	class	modules/block/block.test	block	0
NonDefaultBlockAdmin	class	modules/block/block.test	block	0
NewDefaultThemeBlocks	class	modules/block/block.test	block	0
BlockAdminThemeTestCase	class	modules/block/block.test	block	0
BlockCacheTestCase	class	modules/block/block.test	block	0
BlockHTMLIdTestCase	class	modules/block/block.test	block	0
BlockTemplateSuggestionsUnitTest	class	modules/block/block.test	block	0
BlockViewModuleDeltaAlterWebTest	class	modules/block/block.test	block	0
BlockHiddenRegionTestCase	class	modules/block/block.test	block	0
BlockInvalidRegionTestCase	class	modules/block/block.test	block	0
BlockHashTestCase	class	modules/block/block.test	block	0
DBLogTestCase	class	modules/dblog/dblog.test	dblog	0
DevelMailTest	class	sites/all/modules/devel/devel.test	devel	0
DevelMailLog	class	sites/all/modules/devel/devel.mail.inc	devel	0
LocaleConfigurationTest	class	modules/locale/locale.test	locale	0
LocaleLibraryInfoAlterTest	class	modules/locale/locale.test	locale	0
LocaleJavascriptTranslationTest	class	modules/locale/locale.test	locale	0
LocaleTranslationFunctionalTest	class	modules/locale/locale.test	locale	0
LocalePluralFormatTest	class	modules/locale/locale.test	locale	0
LocaleImportFunctionalTest	class	modules/locale/locale.test	locale	0
LocaleExportFunctionalTest	class	modules/locale/locale.test	locale	0
LocaleInstallTest	class	modules/locale/locale.test	locale	0
LocaleUninstallFunctionalTest	class	modules/locale/locale.test	locale	0
LocaleUninstallFrenchFunctionalTest	class	modules/locale/locale.test	locale	0
LocaleLanguageSwitchingFunctionalTest	class	modules/locale/locale.test	locale	0
LocaleBrowserDetectionTest	class	modules/locale/locale.test	locale	0
LocaleUserLanguageFunctionalTest	class	modules/locale/locale.test	locale	0
LocaleUserCreationTest	class	modules/locale/locale.test	locale	0
LocalePathFunctionalTest	class	modules/locale/locale.test	locale	0
LocaleContentFunctionalTest	class	modules/locale/locale.test	locale	0
LocaleUILanguageNegotiationTest	class	modules/locale/locale.test	locale	0
LocaleUrlRewritingTest	class	modules/locale/locale.test	locale	0
LocaleMultilingualFieldsFunctionalTest	class	modules/locale/locale.test	locale	0
LocaleCommentLanguageFunctionalTest	class	modules/locale/locale.test	locale	0
LocaleDateFormatsFunctionalTest	class	modules/locale/locale.test	locale	0
LocaleLanguageNegotiationInfoFunctionalTest	class	modules/locale/locale.test	locale	0
LocaleCSSAlterTest	class	modules/locale/locale.test	locale	0
DevelGenerateTest	class	sites/all/modules/devel/devel_generate/devel_generate.test	devel_generate	0
AdminMenuWebTestCase	class	sites/all/modules/admin_menu/tests/admin_menu.test	admin_menu	0
AdminMenuPermissionsTestCase	class	sites/all/modules/admin_menu/tests/admin_menu.test	admin_menu	0
AdminMenuDynamicLinksTestCase	class	sites/all/modules/admin_menu/tests/admin_menu.test	admin_menu	0
AdminMenuLinkTypesTestCase	class	sites/all/modules/admin_menu/tests/admin_menu.test	admin_menu	0
AdminMenuCustomizedTestCase	class	sites/all/modules/admin_menu/tests/admin_menu.test	admin_menu	0
l10n_update_xml_parser	class	sites/all/modules/l10n_update/l10n_update.parser.inc	l10n_update	0
ContextualDynamicContextTestCase	class	modules/contextual/contextual.test	contextual	0
\.


--
-- Data for Name: registry_file; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY registry_file (filename, hash) FROM stdin;
modules/system/system.archiver.inc	faa849f3e646a910ab82fd6c8bbf0a4e6b8c60725d7ba81ec0556bd716616cd1
modules/system/system.mail.inc	d31e1769f5defbe5f27dc68f641ab80fb8d3de92f6e895f4c654ec05fc7e5f0f
modules/system/system.queue.inc	ef00fd41ca86de386fa134d5bc1d816f9af550cf0e1334a5c0ade3119688ca3c
modules/system/system.tar.inc	8a31d91f7b3cd7eac25b3fa46e1ed9a8527c39718ba76c3f8c0bbbeaa3aa4086
modules/system/system.updater.inc	338cf14cb691ba16ee551b3b9e0fa4f579a2f25c964130658236726d17563b6a
modules/system/system.test	ad3c68f2cacfe6a99c065edc9aca05a22bdbc74ff6158e9918255b4633134ab4
modules/user/user.module	b658c75c17b263a0aa6be903429c14e0fb1c308dd4e9024e369b7e7feb2b5dce
modules/user/user.test	d27160f1fd04cfb497ff080c7266fcebcd310d2224cfc6aef70035b275d65573
includes/filetransfer/filetransfer.inc	fdea8ae48345ec91885ac48a9bc53daf87616271472bb7c29b7e3ce219b22034
includes/filetransfer/ftp.inc	51eb119b8e1221d598ffa6cc46c8a322aa77b49a3d8879f7fb38b7221cf7e06d
includes/filetransfer/local.inc	7cbfdb46abbdf539640db27e66fb30e5265128f31002bd0dfc3af16ae01a9492
includes/filetransfer/ssh.inc	92f1232158cb32ab04cbc93ae38ad3af04796e18f66910a9bc5ca8e437f06891
includes/database/sqlite/database.inc	4281c6e80932560ecbeb07d1757efd133e8699a6fccf58c27a55df0f71794622
includes/database/sqlite/install.inc	381f3db8c59837d961978ba3097bb6443534ed1659fd713aa563963fa0c42cc5
includes/database/sqlite/query.inc	f33ab1b6350736a231a4f3f93012d3aac4431ac4e5510fb3a015a5aa6cab8303
includes/database/sqlite/schema.inc	cd829700205a8574f8b9d88cd1eaf909519c64754c6f84d6c62b5d21f5886f8d
includes/database/sqlite/select.inc	8d1c426dbd337733c206cce9f59a172546c6ed856d8ef3f1c7bef05a16f7bf68
includes/database/pgsql/database.inc	d737f95947d78eb801e8ec8ca8b01e72d2e305924efce8abca0a98c1b5264cff
includes/database/pgsql/install.inc	585b80c5bbd6f134bff60d06397f15154657a577d4da8d1b181858905f09dea5
includes/database/pgsql/query.inc	0df57377686c921e722a10b49d5e433b131176c8059a4ace4680964206fc14b4
includes/database/pgsql/schema.inc	1588daadfa53506aa1f5d94572162a45a46dc3ceabdd0e2f224532ded6508403
includes/database/pgsql/select.inc	fd4bba7887c1dc6abc8f080fc3a76c01d92ea085434e355dc1ecb50d8743c22d
includes/database/mysql/database.inc	d62a2d8ca103cb3b085e7f8b894a7db14c02f20d0b1ed0bd32f6534a45b4527f
includes/database/mysql/install.inc	6ae316941f771732fbbabed7e1d6b4cbb41b1f429dd097d04b3345aa15e461a0
includes/database/mysql/query.inc	0212a871646c223bf77aa26b945c77a8974855373967b5fb9fdc09f8a1de88a6
includes/database/mysql/schema.inc	6f43ac87508f868fe38ee09994fc18d69915bada0237f8ac3b717cafe8f22c6b
includes/database/database.inc	24afaff6e1026bfe315205212cba72951240a16154250e405c4c64724e6e07cc
includes/database/log.inc	9feb5a17ae2fabcf26a96d2a634ba73da501f7bcfc3599a693d916a6971d00d1
includes/database/prefetch.inc	b5b207a66a69ecb52ee4f4459af16a7b5eabedc87254245f37cc33bebb61c0fb
includes/database/query.inc	9171653e9710c6c0d20cff865fdead5a580367137ad4cdf81059ecc2eea61c74
includes/database/schema.inc	a98b69d33975e75f7d99cb85b20c36b7fc10e35a588e07b20c1b37500f5876ca
includes/database/select.inc	5e9cdc383564ba86cb9dcad0046990ce15415a3000e4f617d6e0f30a205b852c
includes/actions.inc	f36b066681463c7dfe189e0430cb1a89bf66f7e228cbb53cdfcd93987193f759
includes/ajax.inc	f5d608554c6b42b976d6a97e1efffe53c657e9fbb77eabb858935bfdf4276491
includes/archiver.inc	bdbb21b712a62f6b913590b609fd17cd9f3c3b77c0d21f68e71a78427ed2e3e9
includes/authorize.inc	6d64d8c21aa01eb12fc29918732e4df6b871ed06e5d41373cb95c197ed661d13
includes/batch.inc	059da9e36e1f3717f27840aae73f10dea7d6c8daf16f6520401cc1ca3b4c0388
includes/batch.queue.inc	554b2e92e1dad0f7fd5a19cb8dff7e109f10fbe2441a5692d076338ec908de0f
includes/bootstrap.inc	1433438e685f5b982c2259cd3306508c274d6065f63e3e43b6b120f1f7add621
includes/cache-install.inc	e7ed123c5805703c84ad2cce9c1ca46b3ce8caeeea0d8ef39a3024a4ab95fa0e
includes/cache.inc	d01e10e4c18010b6908026f3d71b72717e3272cfb91a528490eba7f339f8dd1b
includes/common.inc	91bf90492c571dba1f6ef7db54a96d360579f933d0f3637b5aa33dff1eeda56a
includes/date.inc	18c047be64f201e16d189f1cc47ed9dcf0a145151b1ee187e90511b24e5d2b36
includes/entity.inc	3080fe3c30991a48f1f314a60d02e841d263a8f222337e5bde3be61afe41ee7a
includes/errors.inc	72cc29840b24830df98a5628286b4d82738f2abbb78e69b4980310ff12062668
includes/file.inc	5ee60833470d5e8d5f2c6c8e7b978ec2e1f3cbf291cb611db1ca560dea98d888
includes/file.mimetypes.inc	33266e837f4ce076378e7e8cef6c5af46446226ca4259f83e13f605856a7f147
includes/form.inc	ead5e56f116ba31898d1b73f1dfc19ea57a9a528f87c9497fd60ad5caedfee2b
includes/graph.inc	8e0e313a8bb33488f371df11fc1b58d7cf80099b886cd1003871e2c896d1b536
includes/image.inc	bcdc7e1599c02227502b9d0fe36eeb2b529b130a392bc709eb737647bd361826
includes/install.core.inc	a0585c85002e6f3d702dc505584f48b55bc13e24bee749bfe5b718fbce4847e1
includes/install.inc	480c3cfd065d3ec00f4465e1b0a0d55d6a8927e78fd6774001c30163a5c648e3
includes/iso.inc	0ce4c225edcfa9f037703bc7dd09d4e268a69bcc90e55da0a3f04c502bd2f349
includes/json-encode.inc	02a822a652d00151f79db9aa9e171c310b69b93a12f549bc2ce00533a8efa14e
includes/language.inc	4dd521af07e0ca7bf97ff145f4bd3a218acf0d8b94964e72f11212bb8af8d66e
includes/locale.inc	b250f375b93ffe3749f946e0ad475065c914af23e388d68e5c5df161590f086a
includes/lock.inc	a181c8bd4f88d292a0a73b9f1fbd727e3314f66ec3631f288e6b9a54ba2b70fa
includes/mail.inc	d9fb2b99025745cbb73ebcfc7ac12df100508b9273ce35c433deacf12dd6a13a
includes/menu.inc	c9ff3c7db04b7e01d0d19b5e47d9fb209799f2ae6584167235b957d22542e526
includes/module.inc	ca3f2e6129181bbbc67e5e6058a882047f2152174ec8e95c0ea99ce610ace4d7
includes/pager.inc	6f9494b85c07a2cc3be4e54aff2d2757485238c476a7da084d25bde1d88be6d8
includes/password.inc	fd9a1c94fe5a0fa7c7049a2435c7280b1d666b2074595010e3c492dd15712775
includes/path.inc	74bf05f3c68b0218730abf3e539fcf08b271959c8f4611940d05124f34a6a66f
includes/registry.inc	c225de772f86eebd21b0b52fa8fcc6671e05fa2374cedb3164f7397f27d3c88d
includes/session.inc	7548621ae4c273179a76eba41aa58b740100613bc015ad388a5c30132b61e34b
includes/stream_wrappers.inc	4f1feb774a8dbc04ca382fa052f59e58039c7261625f3df29987d6b31f08d92d
includes/tablesort.inc	2d88768a544829595dd6cda2a5eb008bedb730f36bba6dfe005d9ddd999d5c0f
includes/theme.inc	0465fb4ed937123c4bed4a4463601055f9b8fc39ca7787d9952b4f4e300db2b3
includes/theme.maintenance.inc	39f068b3eee4d10a90d6aa3c86db587b6d25844c2919d418d34d133cfe330f5a
includes/token.inc	5e7898cd78689e2c291ed3cd8f41c032075656896f1db57e49217aac19ae0428
includes/unicode.entities.inc	2b858138596d961fbaa4c6e3986e409921df7f76b6ee1b109c4af5970f1e0f54
includes/unicode.inc	e18772dafe0f80eb139fcfc582fef1704ba9f730647057d4f4841d6a6e4066ca
includes/update.inc	177ce24362efc7f28b384c90a09c3e485396bbd18c3721d4b21e57dd1733bd92
includes/updater.inc	d2da0e74ed86e93c209f16069f3d32e1a134ceb6c06a0044f78e841a1b54e380
includes/utility.inc	3458fd2b55ab004dd0cc529b8e58af12916e8bd36653b072bdd820b26b907ed5
includes/xmlrpc.inc	ea24176ec445c440ba0c825fc7b04a31b440288df8ef02081560dc418e34e659
includes/xmlrpcs.inc	741aa8d6fcc6c45a9409064f52351f7999b7c702d73def8da44de2567946598a
modules/field/modules/field_sql_storage/field_sql_storage.test	24b4d2596016ff86071ff3f00d63ff854e847dc58ab64a0afc539bdc1f682ac5
modules/filter/filter.test	13330238c7b8d280ff2dd8cfee1c001d5a994ad45e3c9b9c5fdcd963c6080926
modules/node/node.module	3489bbd7e909b21c54a1bd5e4d4daeafb9bebc6606e48fe1d5e7a6ed935a1a3e
modules/node/node.test	e2e485fde00796305fd6926c8b4e9c4e1919020a3ec00819aa5cc1d2b3ebcc5c
modules/field/field.module	2ec1a3ec060504467c3065426a5a1eca8e2c894cb4d4480616bca60fe4b2faf2
modules/field/field.attach.inc	2df4687b5ec078c4893dc1fea514f67524fd5293de717b9e05caf977e5ae2327
modules/field/field.info.class.inc	a6f2f418552dba0e03f57ee812a6f0f63bbfe4bf81fe805d51ecec47ef84b845
modules/field/tests/field.test	0c9c6f9396ab8e0685951f4e90f298629c31d2f7970e5b288e674bc146fefa90
modules/field/modules/text/text.test	a1e5cb0fa8c0651c68d560d9bb7781463a84200f701b00b6e797a9ca792a7e42
modules/block/block.test	df1b364688b46345523dfcb95c0c48352d6a4edbc66597890d29b9b0d7866e86
modules/dblog/dblog.test	11fbb8522b1c9dc7c85edba3aed7308a8891f26fc7292008822bea1b54722912
sites/all/modules/devel/devel.test	6d18fc4c80d6c92d827f967baa36a11a0efc82b02bb79c1ebb53da515322f084
sites/all/modules/devel/devel.mail.inc	49da9730e719dd57db1eb0c416874a5bc0b5a0af50d06f0e3e3832514b653e15
modules/locale/locale.test	59fe99927c790699e0d5a7047df7c05eb9ba3ef4c1363a929e7a65115da24f1a
sites/all/modules/devel/devel_generate/devel_generate.test	f7146275fd8aa5bdbef9597fee0ab9877035819f004bbe1a3e9efa9b649fe41f
sites/all/modules/module_filter/module_filter.install	46a1159d2f88bb2db41a8c4c1378c6385d02d0aa689cc2940ecd4924d508c9f5
sites/all/modules/module_filter/module_filter.module	f4904583eed3544e0f8126f586fefeefd9693dfe703b42b2aa9310979041a4bf
sites/all/modules/module_filter/module_filter.admin.inc	b9a5d2487c2848e9f98139e57fef55b9b803028ccfa59e0920cc672ee0730ad8
sites/all/modules/module_filter/module_filter.theme.inc	e213d11e3ab1a576e9b3301d7a616f7927ef3cc17e422c0a40885596f3f4b942
sites/all/modules/module_filter/css/module_filter.css	2813d8a7a9cca73ac2e7a5e3979d6e913f78cc36dbfe5e21c412eeb9a8fe97fc
sites/all/modules/module_filter/css/module_filter_tab.css	4e505f0aa9e9ba6306f0c1fe900ec5efcdd6de983748e4eee9491ebb03d85c63
sites/all/modules/module_filter/js/module_filter.js	4bb9003d81e4ad063abb22e6820fd35072bb1bcb6a340c7d8034bbc6c5e81b95
sites/all/modules/module_filter/js/module_filter_tab.js	8bb7e5757212f757abec49ce44d5c41939254d70db702bf538fb04f4d23dadee
sites/all/modules/admin_menu/tests/admin_menu.test	185f8244f7a086cda1bd9435ec529e8632598e9b09d1e0d7363b75cf87c04afb
sites/all/modules/l10n_update/l10n_update.parser.inc	4f1630414c2b23da065957a26403cc026f32034fd9550147b12ff7a85cd224d4
modules/contextual/contextual.test	023dafa199bd325ecc55a17b2a3db46ac0a31e23059f701f789f3bc42427ba0b
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY role (rid, name, weight) FROM stdin;
1	anonymous user	0
2	authenticated user	1
\.


--
-- Data for Name: role_permission; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY role_permission (rid, permission, module) FROM stdin;
1	access content	node
2	access content	node
\.


--
-- Name: role_rid_seq; Type: SEQUENCE SET; Schema: public; Owner: drupal
--

SELECT pg_catalog.setval('role_rid_seq', 2, true);


--
-- Data for Name: semaphore; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY semaphore (name, value, expire) FROM stdin;
\.


--
-- Data for Name: sequences; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY sequences (value) FROM stdin;
\.


--
-- Name: sequences_value_seq; Type: SEQUENCE SET; Schema: public; Owner: drupal
--

SELECT pg_catalog.setval('sequences_value_seq', 1, true);


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY sessions (uid, sid, ssid, hostname, "timestamp", cache, session) FROM stdin;
1	k2Jk6ajihHN-jmflYb-4BC_ZTmOLpm772eYCjHJN1V4		127.0.0.1	1418195182	0	batches|a:1:{i:1;b:1;}
\.


--
-- Data for Name: system; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY system (filename, name, type, owner, status, bootstrap, schema_version, weight, info) FROM stdin;
modules/simpletest/tests/drupal_system_listing_incompatible_test/drupal_system_listing_incompatible_test.module	drupal_system_listing_incompatible_test	module		0	0	-1	0	a:13:{s:4:"name";s:39:"Drupal system listing incompatible test";s:11:"description";s:62:"Support module for testing the drupal_system_listing function.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/node/tests/node_access_test.module	node_access_test	module		0	0	-1	0	a:13:{s:4:"name";s:24:"Node module access tests";s:11:"description";s:43:"Support module for node permission testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/field/tests/field_test.module	field_test	module		0	0	-1	0	a:13:{s:4:"name";s:14:"Field API Test";s:11:"description";s:39:"Support module for the Field API tests.";s:4:"core";s:3:"7.x";s:7:"package";s:7:"Testing";s:5:"files";a:1:{i:0;s:21:"field_test.entity.inc";}s:7:"version";s:4:"7.34";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/field_ui/field_ui.module	field_ui	module		0	0	-1	0	a:12:{s:4:"name";s:8:"Field UI";s:11:"description";s:33:"User interface for the Field API.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:5:"field";}s:5:"files";a:1:{i:0;s:13:"field_ui.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
sites/all/modules/devel/devel_generate/devel_generate.module	devel_generate	module		1	0	0	0	a:14:{s:4:"name";s:14:"Devel generate";s:11:"description";s:48:"Generate dummy users, nodes, and taxonomy terms.";s:7:"package";s:11:"Development";s:4:"core";s:3:"7.x";s:4:"tags";a:1:{i:0;s:9:"developer";}s:9:"configure";s:33:"admin/config/development/generate";s:5:"files";a:1:{i:0;s:19:"devel_generate.test";}s:7:"version";s:7:"7.x-1.5";s:7:"project";s:5:"devel";s:9:"datestamp";s:10:"1398963366";s:5:"mtime";i:1398963366;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/php/php.module	php	module		0	0	-1	0	a:12:{s:4:"name";s:10:"PHP filter";s:11:"description";s:50:"Allows embedded PHP code/snippets to be evaluated.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:8:"php.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/poll/poll.module	poll	module		0	0	-1	0	a:13:{s:4:"name";s:4:"Poll";s:11:"description";s:95:"Allows your site to capture votes on different topics in the form of multiple choice questions.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:9:"poll.test";}s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:8:"poll.css";s:21:"modules/poll/poll.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/profile/profile.module	profile	module		0	0	-1	0	a:14:{s:4:"name";s:7:"Profile";s:11:"description";s:36:"Supports configurable user profiles.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:12:"profile.test";}s:9:"configure";s:27:"admin/config/people/profile";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/simpletest/tests/psr_0_test/psr_0_test.module	psr_0_test	module		0	0	-1	0	a:13:{s:4:"name";s:16:"PSR-0 Test cases";s:11:"description";s:44:"Test classes to be discovered by simpletest.";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/rdf/rdf.module	rdf	module		0	0	-1	0	a:12:{s:4:"name";s:3:"RDF";s:11:"description";s:148:"Enriches your content with metadata to let other applications (e.g. search engines, aggregators) better understand its relationships and attributes.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:8:"rdf.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/rdf/tests/rdf_test.module	rdf_test	module		0	0	-1	0	a:13:{s:4:"name";s:16:"RDF module tests";s:11:"description";s:38:"Support module for RDF module testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/simpletest/tests/requirements1_test.module	requirements1_test	module		0	0	-1	0	a:13:{s:4:"name";s:19:"Requirements 1 Test";s:11:"description";s:80:"Tests that a module is not installed when it fails hook_requirements('install').";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/simpletest/tests/session_test.module	session_test	module		0	0	-1	0	a:13:{s:4:"name";s:12:"Session test";s:11:"description";s:40:"Support module for session data testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/shortcut/shortcut.module	shortcut	module		0	0	-1	0	a:13:{s:4:"name";s:8:"Shortcut";s:11:"description";s:60:"Allows users to manage customizable lists of shortcut links.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:13:"shortcut.test";}s:9:"configure";s:36:"admin/config/user-interface/shortcut";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/tracker/tracker.module	tracker	module		0	0	-1	0	a:12:{s:4:"name";s:7:"Tracker";s:11:"description";s:45:"Enables tracking of recent content for users.";s:12:"dependencies";a:1:{i:0;s:7:"comment";}s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:12:"tracker.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/user/tests/user_form_test.module	user_form_test	module		0	0	-1	0	a:13:{s:4:"name";s:22:"User module form tests";s:11:"description";s:37:"Support module for user form testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/translation/translation.module	translation	module		0	0	-1	0	a:12:{s:4:"name";s:19:"Content translation";s:11:"description";s:57:"Allows content to be translated into different languages.";s:12:"dependencies";a:1:{i:0;s:6:"locale";}s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:16:"translation.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/statistics/statistics.module	statistics	module		0	0	-1	0	a:13:{s:4:"name";s:10:"Statistics";s:11:"description";s:37:"Logs access statistics for your site.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:15:"statistics.test";}s:9:"configure";s:30:"admin/config/system/statistics";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/syslog/syslog.module	syslog	module		0	0	-1	0	a:13:{s:4:"name";s:6:"Syslog";s:11:"description";s:41:"Logs and records system events to syslog.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:11:"syslog.test";}s:9:"configure";s:32:"admin/config/development/logging";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/simpletest/tests/theme_test.module	theme_test	module		0	0	-1	0	a:13:{s:4:"name";s:10:"Theme test";s:11:"description";s:40:"Support module for theme system testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/field/field.module	field	module		1	0	7003	0	a:14:{s:4:"name";s:5:"Field";s:11:"description";s:57:"Field API to add fields to entities like nodes and users.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:4:{i:0;s:12:"field.module";i:1;s:16:"field.attach.inc";i:2;s:20:"field.info.class.inc";i:3;s:16:"tests/field.test";}s:12:"dependencies";a:1:{i:0;s:17:"field_sql_storage";}s:8:"required";b:1;s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:15:"theme/field.css";s:29:"modules/field/theme/field.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
sites/all/modules/devel/devel_node_access.module	devel_node_access	module		0	0	-1	0	a:14:{s:4:"name";s:17:"Devel node access";s:11:"description";s:68:"Developer blocks and page illustrating relevant node_access records.";s:7:"package";s:11:"Development";s:12:"dependencies";a:1:{i:0;s:4:"menu";}s:4:"core";s:3:"7.x";s:9:"configure";s:30:"admin/config/development/devel";s:4:"tags";a:1:{i:0;s:9:"developer";}s:7:"version";s:7:"7.x-1.5";s:7:"project";s:5:"devel";s:9:"datestamp";s:10:"1398963366";s:5:"mtime";i:1398963366;s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/comment/comment.module	comment	module		0	0	-1	0	a:14:{s:4:"name";s:7:"Comment";s:11:"description";s:57:"Allows users to comment on and discuss published content.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:4:"text";}s:5:"files";a:2:{i:0;s:14:"comment.module";i:1;s:12:"comment.test";}s:9:"configure";s:21:"admin/content/comment";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:11:"comment.css";s:27:"modules/comment/comment.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/simpletest/tests/update_test_3.module	update_test_3	module		0	0	-1	0	a:13:{s:4:"name";s:11:"Update test";s:11:"description";s:34:"Support module for update testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/dashboard/dashboard.module	dashboard	module		0	0	-1	0	a:13:{s:4:"name";s:9:"Dashboard";s:11:"description";s:136:"Provides a dashboard page in the administrative interface for organizing administrative tasks and tracking information within your site.";s:4:"core";s:3:"7.x";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:5:"files";a:1:{i:0;s:14:"dashboard.test";}s:12:"dependencies";a:1:{i:0;s:5:"block";}s:9:"configure";s:25:"admin/dashboard/customize";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
sites/all/modules/admin_menu/admin_menu.module	admin_menu	module		1	0	7304	100	a:13:{s:4:"name";s:19:"Administration menu";s:11:"description";s:123:"Provides a dropdown menu to most administrative tasks and other common destinations (to users with the proper permissions).";s:7:"package";s:14:"Administration";s:4:"core";s:3:"7.x";s:9:"configure";s:38:"admin/config/administration/admin_menu";s:12:"dependencies";a:1:{i:0;s:14:"system (>7.10)";}s:5:"files";a:1:{i:0;s:21:"tests/admin_menu.test";}s:7:"version";s:11:"7.x-3.0-rc4";s:7:"project";s:10:"admin_menu";s:9:"datestamp";s:10:"1359651687";s:5:"mtime";i:1359651687;s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/contextual/contextual.module	contextual	module		1	0	0	0	a:12:{s:4:"name";s:16:"Contextual links";s:11:"description";s:75:"Provides contextual links to perform actions related to elements on a page.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:15:"contextual.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/system/tests/cron_queue_test.module	cron_queue_test	module		0	0	-1	0	a:13:{s:4:"name";s:15:"Cron Queue test";s:11:"description";s:41:"Support module for the cron queue runner.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/node/tests/node_test_exception.module	node_test_exception	module		0	0	-1	0	a:13:{s:4:"name";s:27:"Node module exception tests";s:11:"description";s:50:"Support module for node related exception testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/field/modules/number/number.module	number	module		0	0	-1	0	a:12:{s:4:"name";s:6:"Number";s:11:"description";s:28:"Defines numeric field types.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:5:"field";}s:5:"files";a:1:{i:0;s:11:"number.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/openid/tests/openid_test.module	openid_test	module		0	0	-1	0	a:13:{s:4:"name";s:21:"OpenID dummy provider";s:11:"description";s:33:"OpenID provider used for testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:6:"openid";}s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/field/modules/options/options.module	options	module		0	0	-1	0	a:12:{s:4:"name";s:7:"Options";s:11:"description";s:82:"Defines selection, check box and radio button widgets for text and numeric fields.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:5:"field";}s:5:"files";a:1:{i:0;s:12:"options.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/overlay/overlay.module	overlay	module		0	0	-1	0	a:12:{s:4:"name";s:7:"Overlay";s:11:"description";s:59:"Displays the Drupal administration interface in an overlay.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/image/tests/image_module_test.module	image_module_test	module		0	0	-1	0	a:13:{s:4:"name";s:10:"Image test";s:11:"description";s:69:"Provides hook implementations for testing Image module functionality.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:24:"image_module_test.module";}s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/simpletest/tests/requirements2_test.module	requirements2_test	module		0	0	-1	0	a:13:{s:4:"name";s:19:"Requirements 2 Test";s:11:"description";s:98:"Tests that a module is not installed when the one it depends on fails hook_requirements('install).";s:12:"dependencies";a:2:{i:0;s:18:"requirements1_test";i:1;s:7:"comment";}s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/search/search.module	search	module		0	0	-1	0	a:14:{s:4:"name";s:6:"Search";s:11:"description";s:36:"Enables site-wide keyword searching.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:2:{i:0;s:19:"search.extender.inc";i:1;s:11:"search.test";}s:9:"configure";s:28:"admin/config/search/settings";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"search.css";s:25:"modules/search/search.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/search/tests/search_embedded_form.module	search_embedded_form	module		0	0	-1	0	a:13:{s:4:"name";s:20:"Search embedded form";s:11:"description";s:59:"Support module for search module testing of embedded forms.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/search/tests/search_extra_type.module	search_extra_type	module		0	0	-1	0	a:13:{s:4:"name";s:16:"Test search type";s:11:"description";s:41:"Support module for search module testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
sites/all/modules/devel/devel.module	devel	module		1	1	7006	88	a:14:{s:4:"name";s:5:"Devel";s:11:"description";s:52:"Various blocks, pages, and functions for developers.";s:7:"package";s:11:"Development";s:4:"core";s:3:"7.x";s:9:"configure";s:30:"admin/config/development/devel";s:4:"tags";a:1:{i:0;s:9:"developer";}s:5:"files";a:2:{i:0;s:10:"devel.test";i:1;s:14:"devel.mail.inc";}s:7:"version";s:7:"7.x-1.5";s:7:"project";s:5:"devel";s:9:"datestamp";s:10:"1398963366";s:5:"mtime";i:1398963366;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/simpletest/tests/entity_cache_test.module	entity_cache_test	module		0	0	-1	0	a:13:{s:4:"name";s:17:"Entity cache test";s:11:"description";s:40:"Support module for testing entity cache.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:28:"entity_cache_test_dependency";}s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/simpletest/tests/menu_test.module	menu_test	module		0	0	-1	0	a:13:{s:4:"name";s:15:"Hook menu tests";s:11:"description";s:37:"Support module for menu hook testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/help/help.module	help	module		0	0	-1	0	a:12:{s:4:"name";s:4:"Help";s:11:"description";s:35:"Manages the display of online help.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:9:"help.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/dblog/dblog.module	dblog	module		1	1	7002	0	a:12:{s:4:"name";s:16:"Database logging";s:11:"description";s:47:"Logs and records system events to the database.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:10:"dblog.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/simpletest/tests/taxonomy_test.module	taxonomy_test	module		0	0	-1	0	a:13:{s:4:"name";s:20:"Taxonomy test module";s:11:"description";s:45:""Tests functions and hooks not used in core".";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:12:"dependencies";a:1:{i:0;s:8:"taxonomy";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
sites/all/modules/admin_menu/admin_menu_toolbar/admin_menu_toolbar.module	admin_menu_toolbar	module		1	0	6300	101	a:12:{s:4:"name";s:33:"Administration menu Toolbar style";s:11:"description";s:17:"A better Toolbar.";s:7:"package";s:14:"Administration";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:10:"admin_menu";}s:7:"version";s:11:"7.x-3.0-rc4";s:7:"project";s:10:"admin_menu";s:9:"datestamp";s:10:"1359651687";s:5:"mtime";i:1359651687;s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
themes/seven/seven.info	seven	theme	themes/engines/phptemplate/phptemplate.engine	0	0	-1	0	a:18:{s:4:"name";s:5:"Seven";s:11:"description";s:65:"A simple one-column, tableless, fluid width administration theme.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:9:"reset.css";s:22:"themes/seven/reset.css";s:9:"style.css";s:22:"themes/seven/style.css";}}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"1";}s:7:"regions";a:5:{s:7:"content";s:7:"Content";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:13:"sidebar_first";s:13:"First sidebar";}s:14:"regions_hidden";a:3:{i:0;s:13:"sidebar_first";i:1;s:8:"page_top";i:2;s:11:"page_bottom";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/seven/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}
modules/menu/menu.module	menu	module		0	0	-1	0	a:13:{s:4:"name";s:4:"Menu";s:11:"description";s:60:"Allows administrators to customize the site navigation menu.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:9:"menu.test";}s:9:"configure";s:20:"admin/structure/menu";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/simpletest/tests/ajax_forms_test.module	ajax_forms_test	module		0	0	-1	0	a:13:{s:4:"name";s:26:"AJAX form test mock module";s:11:"description";s:25:"Test for AJAX form calls.";s:4:"core";s:3:"7.x";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/simpletest/tests/ajax_test.module	ajax_test	module		0	0	-1	0	a:13:{s:4:"name";s:9:"AJAX Test";s:11:"description";s:40:"Support module for AJAX framework tests.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/trigger/trigger.module	trigger	module		0	0	-1	0	a:13:{s:4:"name";s:7:"Trigger";s:11:"description";s:90:"Enables actions to be fired on certain system events, such as when new content is created.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:12:"trigger.test";}s:9:"configure";s:23:"admin/structure/trigger";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/simpletest/tests/update_script_test.module	update_script_test	module		0	0	-1	0	a:13:{s:4:"name";s:18:"Update script test";s:11:"description";s:41:"Support module for update script testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/simpletest/tests/actions_loop_test.module	actions_loop_test	module		0	0	-1	0	a:13:{s:4:"name";s:17:"Actions loop test";s:11:"description";s:39:"Support module for action loop testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
themes/stark/stark.info	stark	theme	themes/engines/phptemplate/phptemplate.engine	0	0	-1	0	a:17:{s:4:"name";s:5:"Stark";s:11:"description";s:208:"This theme demonstrates Drupal's default HTML markup and CSS styles. To learn how to build your own theme and override Drupal's default code, see the <a href="http://drupal.org/theme-guide">Theming Guide</a>.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"layout.css";s:23:"themes/stark/layout.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/stark/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}
modules/simpletest/tests/drupal_system_listing_compatible_test/drupal_system_listing_compatible_test.module	drupal_system_listing_compatible_test	module		0	0	-1	0	a:13:{s:4:"name";s:37:"Drupal system listing compatible test";s:11:"description";s:62:"Support module for testing the drupal_system_listing function.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/aggregator/aggregator.module	aggregator	module		0	0	-1	0	a:14:{s:4:"name";s:10:"Aggregator";s:11:"description";s:57:"Aggregates syndicated content (RSS, RDF, and Atom feeds).";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:15:"aggregator.test";}s:9:"configure";s:41:"admin/config/services/aggregator/settings";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:14:"aggregator.css";s:33:"modules/aggregator/aggregator.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/simpletest/tests/batch_test.module	batch_test	module		0	0	-1	0	a:13:{s:4:"name";s:14:"Batch API test";s:11:"description";s:35:"Support module for Batch API tests.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/update/tests/bbb_update_test.module	bbb_update_test	module		0	0	-1	0	a:13:{s:4:"name";s:15:"BBB Update test";s:11:"description";s:41:"Support module for update module testing.";s:7:"package";s:7:"Testing";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"version";s:4:"7.34";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/book/book.module	book	module		0	0	-1	0	a:14:{s:4:"name";s:4:"Book";s:11:"description";s:66:"Allows users to create and organize related content in an outline.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:9:"book.test";}s:9:"configure";s:27:"admin/content/book/settings";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:8:"book.css";s:21:"modules/book/book.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/simpletest/tests/entity_crud_hook_test.module	entity_crud_hook_test	module		0	0	-1	0	a:13:{s:4:"name";s:22:"Entity CRUD Hooks Test";s:11:"description";s:35:"Support module for CRUD hook tests.";s:4:"core";s:3:"7.x";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/simpletest/tests/system_dependencies_test.module	system_dependencies_test	module		0	0	-1	0	a:13:{s:4:"name";s:22:"System dependency test";s:11:"description";s:47:"Support module for testing system dependencies.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:12:"dependencies";a:1:{i:0;s:19:"_missing_dependency";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
sites/all/modules/module_filter/module_filter.module	module_filter	module		1	0	7201	0	a:13:{s:4:"name";s:13:"Module filter";s:11:"description";s:24:"Filter the modules list.";s:4:"core";s:3:"7.x";s:7:"package";s:14:"Administration";s:5:"files";a:9:{i:0;s:21:"module_filter.install";i:1;s:16:"module_filter.js";i:2;s:20:"module_filter.module";i:3;s:23:"module_filter.admin.inc";i:4;s:23:"module_filter.theme.inc";i:5;s:21:"css/module_filter.css";i:6;s:25:"css/module_filter_tab.css";i:7;s:19:"js/module_filter.js";i:8;s:23:"js/module_filter_tab.js";}s:9:"configure";s:40:"admin/config/user-interface/modulefilter";s:7:"version";s:14:"7.x-2.0-alpha2";s:7:"project";s:13:"module_filter";s:9:"datestamp";s:10:"1386356916";s:5:"mtime";i:1386356916;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/locale/locale.module	locale	module		1	0	7005	0	a:13:{s:4:"name";s:6:"Locale";s:11:"description";s:119:"Adds language handling functionality and enables the translation of the user interface to languages other than English.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:11:"locale.test";}s:9:"configure";s:30:"admin/config/regional/language";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
sites/all/modules/admin_menu/admin_devel/admin_devel.module	admin_devel	module		1	0	0	0	a:13:{s:4:"name";s:32:"Administration Development tools";s:11:"description";s:76:"Administration and debugging functionality for developers and site builders.";s:7:"package";s:14:"Administration";s:4:"core";s:3:"7.x";s:7:"scripts";a:1:{s:14:"admin_devel.js";s:55:"sites/all/modules/admin_menu/admin_devel/admin_devel.js";}s:7:"version";s:11:"7.x-3.0-rc4";s:7:"project";s:10:"admin_menu";s:9:"datestamp";s:10:"1359651687";s:5:"mtime";i:1359651687;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/file/tests/file_module_test.module	file_module_test	module		0	0	-1	0	a:13:{s:4:"name";s:9:"File test";s:11:"description";s:53:"Provides hooks for testing File module functionality.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/blog/blog.module	blog	module		0	0	-1	0	a:12:{s:4:"name";s:4:"Blog";s:11:"description";s:25:"Enables multi-user blogs.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:9:"blog.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/field/modules/list/tests/list_test.module	list_test	module		0	0	-1	0	a:13:{s:4:"name";s:9:"List test";s:11:"description";s:41:"Support module for the List module tests.";s:4:"core";s:3:"7.x";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/openid/openid.module	openid	module		0	0	-1	0	a:12:{s:4:"name";s:6:"OpenID";s:11:"description";s:48:"Allows users to log into your site using OpenID.";s:7:"version";s:4:"7.34";s:7:"package";s:4:"Core";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:11:"openid.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/simpletest/tests/update_test_2.module	update_test_2	module		0	0	-1	0	a:13:{s:4:"name";s:11:"Update test";s:11:"description";s:34:"Support module for update testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/filter/filter.module	filter	module		1	0	7010	0	a:14:{s:4:"name";s:6:"Filter";s:11:"description";s:43:"Filters content in preparation for display.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:11:"filter.test";}s:8:"required";b:1;s:9:"configure";s:28:"admin/config/content/formats";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/simpletest/tests/image_test.module	image_test	module		0	0	-1	0	a:13:{s:4:"name";s:10:"Image test";s:11:"description";s:39:"Support module for image toolkit tests.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/field/modules/list/list.module	list	module		0	0	-1	0	a:12:{s:4:"name";s:4:"List";s:11:"description";s:69:"Defines list field types. Use with Options to create selection lists.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:12:"dependencies";a:2:{i:0;s:5:"field";i:1;s:7:"options";}s:5:"files";a:1:{i:0;s:15:"tests/list.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/node/tests/node_test.module	node_test	module		0	0	-1	0	a:13:{s:4:"name";s:17:"Node module tests";s:11:"description";s:40:"Support module for node related testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/simpletest/tests/system_incompatible_module_version_test.module	system_incompatible_module_version_test	module		0	0	-1	0	a:13:{s:4:"name";s:39:"System incompatible module version test";s:11:"description";s:47:"Support module for testing system dependencies.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/simpletest/tests/url_alter_test.module	url_alter_test	module		0	0	-1	0	a:13:{s:4:"name";s:15:"Url_alter tests";s:11:"description";s:45:"A support modules for url_alter hook testing.";s:4:"core";s:3:"7.x";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/simpletest/tests/system_incompatible_core_version_dependencies_test.module	system_incompatible_core_version_dependencies_test	module		0	0	-1	0	a:13:{s:4:"name";s:50:"System incompatible core version dependencies test";s:11:"description";s:47:"Support module for testing system dependencies.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:12:"dependencies";a:1:{i:0;s:37:"system_incompatible_core_version_test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/simpletest/tests/system_incompatible_module_version_dependencies_test.module	system_incompatible_module_version_dependencies_test	module		0	0	-1	0	a:13:{s:4:"name";s:52:"System incompatible module version dependencies test";s:11:"description";s:47:"Support module for testing system dependencies.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:12:"dependencies";a:1:{i:0;s:46:"system_incompatible_module_version_test (>2.0)";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/taxonomy/taxonomy.module	taxonomy	module		0	0	-1	0	a:13:{s:4:"name";s:8:"Taxonomy";s:11:"description";s:38:"Enables the categorization of content.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:7:"options";}s:5:"files";a:2:{i:0;s:15:"taxonomy.module";i:1;s:13:"taxonomy.test";}s:9:"configure";s:24:"admin/structure/taxonomy";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
sites/all/modules/l10n_update/l10n_update.module	l10n_update	module		1	0	7006	0	a:12:{s:4:"name";s:19:"Localization update";s:11:"description";s:58:"Provides automatic downloads and updates for translations.";s:12:"dependencies";a:1:{i:0;s:6:"locale";}s:4:"core";s:3:"7.x";s:7:"package";s:12:"Multilingual";s:5:"files";a:1:{i:0;s:22:"l10n_update.parser.inc";}s:7:"version";s:7:"7.x-1.1";s:7:"project";s:11:"l10n_update";s:9:"datestamp";s:10:"1415605322";s:5:"mtime";i:1415605322;s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/update/tests/update_test.module	update_test	module		0	0	-1	0	a:13:{s:4:"name";s:11:"Update test";s:11:"description";s:41:"Support module for update module testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/node/node.module	node	module		1	0	7014	0	a:15:{s:4:"name";s:4:"Node";s:11:"description";s:66:"Allows content to be submitted to the site and displayed on pages.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:2:{i:0;s:11:"node.module";i:1;s:9:"node.test";}s:8:"required";b:1;s:9:"configure";s:21:"admin/structure/types";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:8:"node.css";s:21:"modules/node/node.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/field/modules/field_sql_storage/field_sql_storage.module	field_sql_storage	module		1	0	7002	0	a:13:{s:4:"name";s:17:"Field SQL storage";s:11:"description";s:37:"Stores field data in an SQL database.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:5:"field";}s:5:"files";a:1:{i:0;s:22:"field_sql_storage.test";}s:8:"required";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/system/system.module	system	module		1	0	7079	0	a:14:{s:4:"name";s:6:"System";s:11:"description";s:54:"Handles general site configuration for administrators.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:6:{i:0;s:19:"system.archiver.inc";i:1;s:15:"system.mail.inc";i:2;s:16:"system.queue.inc";i:3;s:14:"system.tar.inc";i:4;s:18:"system.updater.inc";i:5;s:11:"system.test";}s:8:"required";b:1;s:9:"configure";s:19:"admin/config/system";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/simpletest/tests/file_test.module	file_test	module		0	0	-1	0	a:13:{s:4:"name";s:9:"File test";s:11:"description";s:39:"Support module for file handling tests.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:16:"file_test.module";}s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/forum/forum.module	forum	module		0	0	-1	0	a:14:{s:4:"name";s:5:"Forum";s:11:"description";s:27:"Provides discussion forums.";s:12:"dependencies";a:2:{i:0;s:8:"taxonomy";i:1;s:7:"comment";}s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:10:"forum.test";}s:9:"configure";s:21:"admin/structure/forum";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:9:"forum.css";s:23:"modules/forum/forum.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/image/image.module	image	module		0	0	-1	0	a:13:{s:4:"name";s:5:"Image";s:11:"description";s:34:"Provides image manipulation tools.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:4:"file";}s:5:"files";a:1:{i:0;s:10:"image.test";}s:9:"configure";s:31:"admin/config/media/image-styles";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/simpletest/tests/system_incompatible_core_version_test.module	system_incompatible_core_version_test	module		0	0	-1	0	a:13:{s:4:"name";s:37:"System incompatible core version test";s:11:"description";s:47:"Support module for testing system dependencies.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"5.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/field/modules/text/text.module	text	module		1	0	7000	0	a:13:{s:4:"name";s:4:"Text";s:11:"description";s:32:"Defines simple text field types.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:5:"field";}s:5:"files";a:1:{i:0;s:9:"text.test";}s:8:"required";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
themes/garland/garland.info	garland	theme	themes/engines/phptemplate/phptemplate.engine	0	0	-1	0	a:18:{s:4:"name";s:7:"Garland";s:11:"description";s:111:"A multi-column theme which can be configured to modify colors and switch between fixed and fluid width layouts.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:8:"settings";a:1:{s:13:"garland_width";s:5:"fluid";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:29:"themes/garland/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}
modules/toolbar/toolbar.module	toolbar	module		0	0	-1	0	a:12:{s:4:"name";s:7:"Toolbar";s:11:"description";s:99:"Provides a toolbar that shows the top-level administration menu items and links from other modules.";s:4:"core";s:3:"7.x";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/update/update.module	update	module		0	0	-1	0	a:13:{s:4:"name";s:14:"Update manager";s:11:"description";s:104:"Checks for available updates, and can securely install or update modules and themes via a web interface.";s:7:"version";s:4:"7.34";s:7:"package";s:4:"Core";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:11:"update.test";}s:9:"configure";s:30:"admin/reports/updates/settings";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/simpletest/tests/update_test_1.module	update_test_1	module		0	0	-1	0	a:13:{s:4:"name";s:11:"Update test";s:11:"description";s:34:"Support module for update testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/user/user.module	user	module		1	0	7018	0	a:15:{s:4:"name";s:4:"User";s:11:"description";s:47:"Manages the user registration and login system.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:2:{i:0;s:11:"user.module";i:1;s:9:"user.test";}s:8:"required";b:1;s:9:"configure";s:19:"admin/config/people";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:8:"user.css";s:21:"modules/user/user.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/simpletest/tests/filter_test.module	filter_test	module		0	0	-1	0	a:13:{s:4:"name";s:18:"Filter test module";s:11:"description";s:33:"Tests filter hooks and functions.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/simpletest/tests/form_test.module	form_test	module		0	0	-1	0	a:13:{s:4:"name";s:12:"FormAPI Test";s:11:"description";s:34:"Support module for Form API tests.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/update/tests/aaa_update_test.module	aaa_update_test	module		0	0	-1	0	a:13:{s:4:"name";s:15:"AAA Update test";s:11:"description";s:41:"Support module for update module testing.";s:7:"package";s:7:"Testing";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"version";s:4:"7.34";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/aggregator/tests/aggregator_test.module	aggregator_test	module		0	0	-1	0	a:13:{s:4:"name";s:23:"Aggregator module tests";s:11:"description";s:46:"Support module for aggregator related testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/locale/tests/locale_test.module	locale_test	module		0	0	-1	0	a:13:{s:4:"name";s:11:"Locale Test";s:11:"description";s:42:"Support module for the locale layer tests.";s:4:"core";s:3:"7.x";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/simpletest/tests/module_test.module	module_test	module		0	0	-1	0	a:13:{s:4:"name";s:11:"Module test";s:11:"description";s:41:"Support module for module system testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/path/path.module	path	module		0	0	-1	0	a:13:{s:4:"name";s:4:"Path";s:11:"description";s:28:"Allows users to rename URLs.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:9:"path.test";}s:9:"configure";s:24:"admin/config/search/path";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/simpletest/tests/path_test.module	path_test	module		0	0	-1	0	a:13:{s:4:"name";s:15:"Hook path tests";s:11:"description";s:37:"Support module for path hook testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/simpletest/simpletest.module	simpletest	module		0	0	-1	0	a:13:{s:4:"name";s:7:"Testing";s:11:"description";s:53:"Provides a framework for unit and functional testing.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:49:{i:0;s:15:"simpletest.test";i:1;s:24:"drupal_web_test_case.php";i:2;s:18:"tests/actions.test";i:3;s:15:"tests/ajax.test";i:4;s:16:"tests/batch.test";i:5;s:20:"tests/bootstrap.test";i:6;s:16:"tests/cache.test";i:7;s:17:"tests/common.test";i:8;s:24:"tests/database_test.test";i:9;s:22:"tests/entity_crud.test";i:10;s:32:"tests/entity_crud_hook_test.test";i:11;s:23:"tests/entity_query.test";i:12;s:16:"tests/error.test";i:13;s:15:"tests/file.test";i:14;s:23:"tests/filetransfer.test";i:15;s:15:"tests/form.test";i:16;s:16:"tests/graph.test";i:17;s:16:"tests/image.test";i:18;s:15:"tests/lock.test";i:19;s:15:"tests/mail.test";i:20;s:15:"tests/menu.test";i:21;s:17:"tests/module.test";i:22;s:16:"tests/pager.test";i:23;s:19:"tests/password.test";i:24;s:15:"tests/path.test";i:25;s:19:"tests/registry.test";i:26;s:17:"tests/schema.test";i:27;s:18:"tests/session.test";i:28;s:20:"tests/tablesort.test";i:29;s:16:"tests/theme.test";i:30;s:18:"tests/unicode.test";i:31;s:17:"tests/update.test";i:32;s:17:"tests/xmlrpc.test";i:33;s:26:"tests/upgrade/upgrade.test";i:34;s:34:"tests/upgrade/upgrade.comment.test";i:35;s:33:"tests/upgrade/upgrade.filter.test";i:36;s:32:"tests/upgrade/upgrade.forum.test";i:37;s:33:"tests/upgrade/upgrade.locale.test";i:38;s:31:"tests/upgrade/upgrade.menu.test";i:39;s:31:"tests/upgrade/upgrade.node.test";i:40;s:35:"tests/upgrade/upgrade.taxonomy.test";i:41;s:34:"tests/upgrade/upgrade.trigger.test";i:42;s:39:"tests/upgrade/upgrade.translatable.test";i:43;s:33:"tests/upgrade/upgrade.upload.test";i:44;s:31:"tests/upgrade/upgrade.user.test";i:45;s:36:"tests/upgrade/update.aggregator.test";i:46;s:33:"tests/upgrade/update.trigger.test";i:47;s:31:"tests/upgrade/update.field.test";i:48;s:30:"tests/upgrade/update.user.test";}s:9:"configure";s:41:"admin/config/development/testing/settings";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
themes/bartik/bartik.info	bartik	theme	themes/engines/phptemplate/phptemplate.engine	1	0	-1	0	a:18:{s:4:"name";s:6:"Bartik";s:11:"description";s:48:"A flexible, recolorable theme with many regions.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:28:"themes/bartik/css/layout.css";s:13:"css/style.css";s:27:"themes/bartik/css/style.css";s:14:"css/colors.css";s:28:"themes/bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:27:"themes/bartik/css/print.css";}}s:7:"regions";a:17:{s:6:"header";s:6:"Header";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:11:"highlighted";s:11:"Highlighted";s:8:"featured";s:8:"Featured";s:7:"content";s:7:"Content";s:13:"sidebar_first";s:13:"Sidebar first";s:14:"sidebar_second";s:14:"Sidebar second";s:14:"triptych_first";s:14:"Triptych first";s:15:"triptych_middle";s:15:"Triptych middle";s:13:"triptych_last";s:13:"Triptych last";s:18:"footer_firstcolumn";s:19:"Footer first column";s:19:"footer_secondcolumn";s:20:"Footer second column";s:18:"footer_thirdcolumn";s:19:"Footer third column";s:19:"footer_fourthcolumn";s:20:"Footer fourth column";s:6:"footer";s:6:"Footer";}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"0";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:28:"themes/bartik/screenshot.png";s:3:"php";s:5:"5.2.4";s:7:"scripts";a:0:{}s:5:"mtime";i:1416429488;s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}s:28:"overlay_supplemental_regions";a:1:{i:0;s:11:"page_bottom";}}
modules/block/tests/block_test.module	block_test	module		0	0	-1	0	a:13:{s:4:"name";s:10:"Block test";s:11:"description";s:21:"Provides test blocks.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/color/color.module	color	module		0	0	-1	0	a:12:{s:4:"name";s:5:"Color";s:11:"description";s:70:"Allows administrators to change the color scheme of compatible themes.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:10:"color.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/simpletest/tests/common_test_cron_helper.module	common_test_cron_helper	module		0	0	-1	0	a:13:{s:4:"name";s:23:"Common Test Cron Helper";s:11:"description";s:56:"Helper module for CronRunTestCase::testCronExceptions().";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/file/file.module	file	module		0	0	-1	0	a:12:{s:4:"name";s:4:"File";s:11:"description";s:26:"Defines a file field type.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:5:"field";}s:5:"files";a:1:{i:0;s:15:"tests/file.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/simpletest/tests/entity_query_access_test.module	entity_query_access_test	module		0	0	-1	0	a:13:{s:4:"name";s:24:"Entity query access test";s:11:"description";s:49:"Support module for checking entity query results.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/translation/tests/translation_test.module	translation_test	module		0	0	-1	0	a:13:{s:4:"name";s:24:"Content Translation Test";s:11:"description";s:49:"Support module for the content translation tests.";s:4:"core";s:3:"7.x";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/contact/contact.module	contact	module		0	0	-1	0	a:13:{s:4:"name";s:7:"Contact";s:11:"description";s:61:"Enables the use of both personal and site-wide contact forms.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:12:"contact.test";}s:9:"configure";s:23:"admin/structure/contact";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/simpletest/tests/database_test.module	database_test	module		0	0	-1	0	a:13:{s:4:"name";s:13:"Database Test";s:11:"description";s:40:"Support module for Database layer tests.";s:4:"core";s:3:"7.x";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/simpletest/tests/system_test.module	system_test	module		0	0	-1	0	a:13:{s:4:"name";s:11:"System test";s:11:"description";s:34:"Support module for system testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:18:"system_test.module";}s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/simpletest/tests/xmlrpc_test.module	xmlrpc_test	module		0	0	-1	0	a:13:{s:4:"name";s:12:"XML-RPC Test";s:11:"description";s:75:"Support module for XML-RPC tests according to the validator1 specification.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/block/block.module	block	module		1	0	7009	-5	a:13:{s:4:"name";s:5:"Block";s:11:"description";s:140:"Controls the visual building blocks a page is constructed with. Blocks are boxes of content rendered into an area, or region, of a web page.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:10:"block.test";}s:9:"configure";s:21:"admin/structure/block";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:9:"bootstrap";i:0;}
modules/simpletest/tests/entity_cache_test_dependency.module	entity_cache_test_dependency	module		0	0	-1	0	a:13:{s:4:"name";s:28:"Entity cache test dependency";s:11:"description";s:51:"Support dependency module for testing entity cache.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/update/tests/ccc_update_test.module	ccc_update_test	module		0	0	-1	0	a:13:{s:4:"name";s:15:"CCC Update test";s:11:"description";s:41:"Support module for update module testing.";s:7:"package";s:7:"Testing";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"version";s:4:"7.34";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/simpletest/tests/error_test.module	error_test	module		0	0	-1	0	a:13:{s:4:"name";s:10:"Error test";s:11:"description";s:47:"Support module for error and exception testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/trigger/tests/trigger_test.module	trigger_test	module		0	0	-1	0	a:13:{s:4:"name";s:12:"Trigger Test";s:11:"description";s:33:"Support module for Trigger tests.";s:7:"package";s:7:"Testing";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"version";s:4:"7.34";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
modules/simpletest/tests/common_test.module	common_test	module		0	0	-1	0	a:14:{s:4:"name";s:11:"Common Test";s:11:"description";s:32:"Support module for Common tests.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:15:"common_test.css";s:40:"modules/simpletest/tests/common_test.css";}s:5:"print";a:1:{s:21:"common_test.print.css";s:46:"modules/simpletest/tests/common_test.print.css";}}s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}
profiles/minimal/minimal.profile	minimal	module		1	0	0	1000	a:15:{s:4:"name";s:7:"Minimal";s:11:"description";s:38:"Start with only a few modules enabled.";s:7:"version";s:4:"7.34";s:4:"core";s:3:"7.x";s:12:"dependencies";a:2:{i:0;s:5:"block";i:1;s:5:"dblog";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1416429488";s:5:"mtime";i:1416429488;s:7:"package";s:5:"Other";s:3:"php";s:5:"5.2.4";s:5:"files";a:0:{}s:9:"bootstrap";i:0;s:6:"hidden";b:1;s:8:"required";b:1;s:17:"distribution_name";s:6:"Drupal";}
\.


--
-- Data for Name: url_alias; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY url_alias (pid, source, alias, language) FROM stdin;
\.


--
-- Name: url_alias_pid_seq; Type: SEQUENCE SET; Schema: public; Owner: drupal
--

SELECT pg_catalog.setval('url_alias_pid_seq', 1, false);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY users (uid, name, pass, mail, theme, signature, signature_format, created, access, login, status, timezone, language, picture, init, data) FROM stdin;
0						\N	0	0	0	0	\N		0		\N
1	admin	$S$D88mV9XVg3dsr6PSGbHMPQmFShw491fvV2iDEe1LZnIw/oSa7xCH	petuzueg@gmail.com			\N	1418194757	1418195030	1418194836	1	Europe/Moscow		0	petuzueg@gmail.com	b:0;
\.


--
-- Data for Name: users_roles; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY users_roles (uid, rid) FROM stdin;
\.


--
-- Data for Name: variable; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY variable (name, value) FROM stdin;
theme_default	s:6:"bartik";
cron_key	s:43:"XVk-1q78i8XN8T_YpAyfoj69Ko9D2qYJQJjPdgpyueg";
file_temporary_path	s:4:"/tmp";
path_alias_whitelist	a:0:{}
drupal_private_key	s:43:"tglKJTamMxQfHtizESkw_DaynrMWNz-mklCEP9ZQir0";
filter_fallback_format	s:10:"plain_text";
user_register	i:2;
language_negotiation_language	a:0:{}
language_negotiation_language_content	a:1:{s:16:"locale-interface";a:2:{s:9:"callbacks";a:1:{s:8:"language";s:30:"locale_language_from_interface";}s:4:"file";s:19:"includes/locale.inc";}}
language_negotiation_language_url	a:2:{s:10:"locale-url";a:2:{s:9:"callbacks";a:3:{s:8:"language";s:24:"locale_language_from_url";s:8:"switcher";s:28:"locale_language_switcher_url";s:11:"url_rewrite";s:31:"locale_language_url_rewrite_url";}s:4:"file";s:19:"includes/locale.inc";}s:19:"locale-url-fallback";a:2:{s:9:"callbacks";a:1:{s:8:"language";s:28:"locale_language_url_fallback";}s:4:"file";s:19:"includes/locale.inc";}}
css_js_query_string	s:6:"ngcue3";
menu_masks	a:19:{i:0;i:125;i:1;i:121;i:2;i:63;i:3;i:62;i:4;i:61;i:5;i:60;i:6;i:44;i:7;i:31;i:8;i:30;i:9;i:24;i:10;i:21;i:11;i:15;i:12;i:14;i:13;i:11;i:14;i:7;i:15;i:5;i:16;i:3;i:17;i:2;i:18;i:1;}
menu_expanded	a:0:{}
site_name	s:11:"pg.vekev.ru";
site_mail	s:14:"robot@vekev.ru";
date_default_timezone	s:13:"Europe/Moscow";
site_default_country	s:2:"RU";
clean_url	s:1:"1";
install_time	i:1418194836;
javascript_parsed	a:20:{i:0;s:14:"misc/drupal.js";i:1;s:14:"misc/jquery.js";i:2;s:19:"misc/jquery.once.js";i:3;s:55:"sites/all/modules/admin_menu/admin_devel/admin_devel.js";i:4;s:43:"sites/all/modules/devel/devel_krumo_path.js";i:5;s:32:"modules/contextual/contextual.js";i:6;s:21:"misc/jquery.cookie.js";i:7;s:51:"sites/all/modules/module_filter/js/module_filter.js";i:8;s:45:"sites/all/modules/module_filter/js/modules.js";i:9;s:21:"misc/jquery.ba-bbq.js";i:10;s:55:"sites/all/modules/module_filter/js/module_filter_tab.js";i:11;s:54:"sites/all/modules/module_filter/js/dynamic_position.js";i:12;s:19:"misc/tableheader.js";i:13;s:42:"sites/all/modules/admin_menu/admin_menu.js";i:14;s:69:"sites/all/modules/admin_menu/admin_menu_toolbar/admin_menu_toolbar.js";i:15;s:12:"misc/form.js";i:16;s:16:"misc/textarea.js";i:17;s:16:"misc/collapse.js";i:18;s:21:"misc/vertical-tabs.js";i:19;s:22:"modules/block/block.js";}
install_profile	s:7:"minimal";
cron_last	i:1418194836;
install_task	s:4:"done";
module_filter_recent_modules	a:1:{s:10:"contextual";i:1418195163;}
language_types	a:3:{s:8:"language";b:1;s:16:"language_content";b:0;s:12:"language_url";b:0;}
\.


--
-- Data for Name: watchdog; Type: TABLE DATA; Schema: public; Owner: drupal
--

COPY watchdog (wid, uid, type, message, variables, severity, link, location, referer, hostname, "timestamp") FROM stdin;
1	0	system	%module module installed.	a:1:{s:7:"%module";s:5:"dblog";}	6		http://pg.vekev.ru/install.php?profile=minimal&locale=en&id=1&op=do	http://pg.vekev.ru/install.php?profile=minimal&locale=en&op=start&id=1	127.0.0.1	1418194762
2	0	system	%module module enabled.	a:1:{s:7:"%module";s:5:"dblog";}	6		http://pg.vekev.ru/install.php?profile=minimal&locale=en&id=1&op=do	http://pg.vekev.ru/install.php?profile=minimal&locale=en&op=start&id=1	127.0.0.1	1418194762
3	0	system	%module module installed.	a:1:{s:7:"%module";s:7:"minimal";}	6		http://pg.vekev.ru/install.php?profile=minimal&locale=en&id=1&op=do	http://pg.vekev.ru/install.php?profile=minimal&locale=en&op=start&id=1	127.0.0.1	1418194763
4	0	system	%module module enabled.	a:1:{s:7:"%module";s:7:"minimal";}	6		http://pg.vekev.ru/install.php?profile=minimal&locale=en&id=1&op=do	http://pg.vekev.ru/install.php?profile=minimal&locale=en&op=start&id=1	127.0.0.1	1418194763
5	0	actions	Action '%action' added.	a:1:{s:7:"%action";s:15:"Publish content";}	5		http://pg.vekev.ru/install.php?profile=minimal&locale=en&id=1&op=finished	http://pg.vekev.ru/install.php?profile=minimal&locale=en&op=start&id=1	127.0.0.1	1418194764
6	0	actions	Action '%action' added.	a:1:{s:7:"%action";s:17:"Unpublish content";}	5		http://pg.vekev.ru/install.php?profile=minimal&locale=en&id=1&op=finished	http://pg.vekev.ru/install.php?profile=minimal&locale=en&op=start&id=1	127.0.0.1	1418194764
7	0	actions	Action '%action' added.	a:1:{s:7:"%action";s:19:"Make content sticky";}	5		http://pg.vekev.ru/install.php?profile=minimal&locale=en&id=1&op=finished	http://pg.vekev.ru/install.php?profile=minimal&locale=en&op=start&id=1	127.0.0.1	1418194764
8	0	actions	Action '%action' added.	a:1:{s:7:"%action";s:21:"Make content unsticky";}	5		http://pg.vekev.ru/install.php?profile=minimal&locale=en&id=1&op=finished	http://pg.vekev.ru/install.php?profile=minimal&locale=en&op=start&id=1	127.0.0.1	1418194764
9	0	actions	Action '%action' added.	a:1:{s:7:"%action";s:29:"Promote content to front page";}	5		http://pg.vekev.ru/install.php?profile=minimal&locale=en&id=1&op=finished	http://pg.vekev.ru/install.php?profile=minimal&locale=en&op=start&id=1	127.0.0.1	1418194764
10	0	actions	Action '%action' added.	a:1:{s:7:"%action";s:30:"Remove content from front page";}	5		http://pg.vekev.ru/install.php?profile=minimal&locale=en&id=1&op=finished	http://pg.vekev.ru/install.php?profile=minimal&locale=en&op=start&id=1	127.0.0.1	1418194764
11	0	actions	Action '%action' added.	a:1:{s:7:"%action";s:12:"Save content";}	5		http://pg.vekev.ru/install.php?profile=minimal&locale=en&id=1&op=finished	http://pg.vekev.ru/install.php?profile=minimal&locale=en&op=start&id=1	127.0.0.1	1418194764
12	0	actions	Action '%action' added.	a:1:{s:7:"%action";s:30:"Ban IP address of current user";}	5		http://pg.vekev.ru/install.php?profile=minimal&locale=en&id=1&op=finished	http://pg.vekev.ru/install.php?profile=minimal&locale=en&op=start&id=1	127.0.0.1	1418194764
13	0	actions	Action '%action' added.	a:1:{s:7:"%action";s:18:"Block current user";}	5		http://pg.vekev.ru/install.php?profile=minimal&locale=en&id=1&op=finished	http://pg.vekev.ru/install.php?profile=minimal&locale=en&op=start&id=1	127.0.0.1	1418194764
14	1	user	Session opened for %name.	a:1:{s:5:"%name";s:5:"admin";}	5		http://pg.vekev.ru/install.php?profile=minimal&locale=en	http://pg.vekev.ru/install.php?profile=minimal&locale=en	127.0.0.1	1418194836
15	0	cron	Cron run completed.	a:0:{}	5		http://pg.vekev.ru/install.php?profile=minimal&locale=en	http://pg.vekev.ru/install.php?profile=minimal&locale=en	127.0.0.1	1418194837
16	0	system	%module module installed.	a:1:{s:7:"%module";s:5:"devel";}	6		http://default/index.php		127.0.0.1	1418195129
17	0	system	%module module enabled.	a:1:{s:7:"%module";s:5:"devel";}	6		http://default/index.php		127.0.0.1	1418195129
18	0	system	%module module installed.	a:1:{s:7:"%module";s:6:"locale";}	6		http://default/index.php		127.0.0.1	1418195129
19	0	system	%module module enabled.	a:1:{s:7:"%module";s:6:"locale";}	6		http://default/index.php		127.0.0.1	1418195129
20	0	system	%module module installed.	a:1:{s:7:"%module";s:14:"devel_generate";}	6		http://default/index.php		127.0.0.1	1418195129
21	0	system	%module module enabled.	a:1:{s:7:"%module";s:14:"devel_generate";}	6		http://default/index.php		127.0.0.1	1418195129
22	0	system	%module module installed.	a:1:{s:7:"%module";s:11:"admin_devel";}	6		http://default/index.php		127.0.0.1	1418195129
23	0	system	%module module enabled.	a:1:{s:7:"%module";s:11:"admin_devel";}	6		http://default/index.php		127.0.0.1	1418195129
24	0	system	%module module installed.	a:1:{s:7:"%module";s:13:"module_filter";}	6		http://default/index.php		127.0.0.1	1418195129
25	0	system	%module module enabled.	a:1:{s:7:"%module";s:13:"module_filter";}	6		http://default/index.php		127.0.0.1	1418195129
26	0	system	%module module installed.	a:1:{s:7:"%module";s:10:"admin_menu";}	6		http://default/index.php		127.0.0.1	1418195130
27	0	system	%module module enabled.	a:1:{s:7:"%module";s:10:"admin_menu";}	6		http://default/index.php		127.0.0.1	1418195130
28	0	system	%module module installed.	a:1:{s:7:"%module";s:11:"l10n_update";}	6		http://default/index.php		127.0.0.1	1418195130
29	0	system	%module module enabled.	a:1:{s:7:"%module";s:11:"l10n_update";}	6		http://default/index.php		127.0.0.1	1418195130
30	0	system	%module module installed.	a:1:{s:7:"%module";s:18:"admin_menu_toolbar";}	6		http://default/index.php		127.0.0.1	1418195130
31	0	system	%module module enabled.	a:1:{s:7:"%module";s:18:"admin_menu_toolbar";}	6		http://default/index.php		127.0.0.1	1418195130
32	1	system	%module module installed.	a:1:{s:7:"%module";s:10:"contextual";}	6		http://pg.vekev.ru/admin/modules/list/confirm	http://pg.vekev.ru/admin/modules	127.0.0.1	1418195165
33	1	system	%module module enabled.	a:1:{s:7:"%module";s:10:"contextual";}	6		http://pg.vekev.ru/admin/modules/list/confirm	http://pg.vekev.ru/admin/modules	127.0.0.1	1418195165
\.


--
-- Name: watchdog_wid_seq; Type: SEQUENCE SET; Schema: public; Owner: drupal
--

SELECT pg_catalog.setval('watchdog_wid_seq', 33, true);


--
-- Name: actions_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY actions
    ADD CONSTRAINT actions_pkey PRIMARY KEY (aid);


--
-- Name: authmap_authname_key; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY authmap
    ADD CONSTRAINT authmap_authname_key UNIQUE (authname);


--
-- Name: authmap_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY authmap
    ADD CONSTRAINT authmap_pkey PRIMARY KEY (aid);


--
-- Name: batch_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY batch
    ADD CONSTRAINT batch_pkey PRIMARY KEY (bid);


--
-- Name: block_custom_info_key; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY block_custom
    ADD CONSTRAINT block_custom_info_key UNIQUE (info);


--
-- Name: block_custom_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY block_custom
    ADD CONSTRAINT block_custom_pkey PRIMARY KEY (bid);


--
-- Name: block_node_type_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY block_node_type
    ADD CONSTRAINT block_node_type_pkey PRIMARY KEY (module, delta, type);


--
-- Name: block_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY block
    ADD CONSTRAINT block_pkey PRIMARY KEY (bid);


--
-- Name: block_role_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY block_role
    ADD CONSTRAINT block_role_pkey PRIMARY KEY (module, delta, rid);


--
-- Name: block_tmd_key; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY block
    ADD CONSTRAINT block_tmd_key UNIQUE (theme, module, delta);


--
-- Name: blocked_ips_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY blocked_ips
    ADD CONSTRAINT blocked_ips_pkey PRIMARY KEY (iid);


--
-- Name: cache_admin_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY cache_admin_menu
    ADD CONSTRAINT cache_admin_menu_pkey PRIMARY KEY (cid);


--
-- Name: cache_block_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY cache_block
    ADD CONSTRAINT cache_block_pkey PRIMARY KEY (cid);


--
-- Name: cache_bootstrap_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY cache_bootstrap
    ADD CONSTRAINT cache_bootstrap_pkey PRIMARY KEY (cid);


--
-- Name: cache_field_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY cache_field
    ADD CONSTRAINT cache_field_pkey PRIMARY KEY (cid);


--
-- Name: cache_filter_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY cache_filter
    ADD CONSTRAINT cache_filter_pkey PRIMARY KEY (cid);


--
-- Name: cache_form_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY cache_form
    ADD CONSTRAINT cache_form_pkey PRIMARY KEY (cid);


--
-- Name: cache_l10n_update_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY cache_l10n_update
    ADD CONSTRAINT cache_l10n_update_pkey PRIMARY KEY (cid);


--
-- Name: cache_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY cache_menu
    ADD CONSTRAINT cache_menu_pkey PRIMARY KEY (cid);


--
-- Name: cache_page_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY cache_page
    ADD CONSTRAINT cache_page_pkey PRIMARY KEY (cid);


--
-- Name: cache_path_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY cache_path
    ADD CONSTRAINT cache_path_pkey PRIMARY KEY (cid);


--
-- Name: cache_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (cid);


--
-- Name: date_format_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY date_format_locale
    ADD CONSTRAINT date_format_locale_pkey PRIMARY KEY (type, language);


--
-- Name: date_format_type_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY date_format_type
    ADD CONSTRAINT date_format_type_pkey PRIMARY KEY (type);


--
-- Name: date_formats_formats_key; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY date_formats
    ADD CONSTRAINT date_formats_formats_key UNIQUE (format, type);


--
-- Name: date_formats_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY date_formats
    ADD CONSTRAINT date_formats_pkey PRIMARY KEY (dfid);


--
-- Name: field_config_instance_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY field_config_instance
    ADD CONSTRAINT field_config_instance_pkey PRIMARY KEY (id);


--
-- Name: field_config_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY field_config
    ADD CONSTRAINT field_config_pkey PRIMARY KEY (id);


--
-- Name: file_managed_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY file_managed
    ADD CONSTRAINT file_managed_pkey PRIMARY KEY (fid);


--
-- Name: file_managed_uri_key; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY file_managed
    ADD CONSTRAINT file_managed_uri_key UNIQUE (uri);


--
-- Name: file_usage_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY file_usage
    ADD CONSTRAINT file_usage_pkey PRIMARY KEY (fid, type, id, module);


--
-- Name: filter_format_name_key; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY filter_format
    ADD CONSTRAINT filter_format_name_key UNIQUE (name);


--
-- Name: filter_format_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY filter_format
    ADD CONSTRAINT filter_format_pkey PRIMARY KEY (format);


--
-- Name: filter_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY filter
    ADD CONSTRAINT filter_pkey PRIMARY KEY (format, name);


--
-- Name: flood_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY flood
    ADD CONSTRAINT flood_pkey PRIMARY KEY (fid);


--
-- Name: history_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY history
    ADD CONSTRAINT history_pkey PRIMARY KEY (uid, nid);


--
-- Name: l10n_update_file_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY l10n_update_file
    ADD CONSTRAINT l10n_update_file_pkey PRIMARY KEY (project, language);


--
-- Name: l10n_update_project_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY l10n_update_project
    ADD CONSTRAINT l10n_update_project_pkey PRIMARY KEY (name);


--
-- Name: languages_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY languages
    ADD CONSTRAINT languages_pkey PRIMARY KEY (language);


--
-- Name: locales_source_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY locales_source
    ADD CONSTRAINT locales_source_pkey PRIMARY KEY (lid);


--
-- Name: locales_target_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY locales_target
    ADD CONSTRAINT locales_target_pkey PRIMARY KEY (language, lid, plural);


--
-- Name: menu_links_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY menu_links
    ADD CONSTRAINT menu_links_pkey PRIMARY KEY (mlid);


--
-- Name: menu_router_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY menu_router
    ADD CONSTRAINT menu_router_pkey PRIMARY KEY (path);


--
-- Name: node_access_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY node_access
    ADD CONSTRAINT node_access_pkey PRIMARY KEY (nid, gid, realm);


--
-- Name: node_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY node
    ADD CONSTRAINT node_pkey PRIMARY KEY (nid);


--
-- Name: node_revision_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY node_revision
    ADD CONSTRAINT node_revision_pkey PRIMARY KEY (vid);


--
-- Name: node_type_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY node_type
    ADD CONSTRAINT node_type_pkey PRIMARY KEY (type);


--
-- Name: node_vid_key; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY node
    ADD CONSTRAINT node_vid_key UNIQUE (vid);


--
-- Name: queue_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY queue
    ADD CONSTRAINT queue_pkey PRIMARY KEY (item_id);


--
-- Name: registry_file_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY registry_file
    ADD CONSTRAINT registry_file_pkey PRIMARY KEY (filename);


--
-- Name: registry_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY registry
    ADD CONSTRAINT registry_pkey PRIMARY KEY (name, type);


--
-- Name: role_name_key; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY role
    ADD CONSTRAINT role_name_key UNIQUE (name);


--
-- Name: role_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY role_permission
    ADD CONSTRAINT role_permission_pkey PRIMARY KEY (rid, permission);


--
-- Name: role_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY role
    ADD CONSTRAINT role_pkey PRIMARY KEY (rid);


--
-- Name: semaphore_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY semaphore
    ADD CONSTRAINT semaphore_pkey PRIMARY KEY (name);


--
-- Name: sequences_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY sequences
    ADD CONSTRAINT sequences_pkey PRIMARY KEY (value);


--
-- Name: sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (sid, ssid);


--
-- Name: system_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY system
    ADD CONSTRAINT system_pkey PRIMARY KEY (filename);


--
-- Name: url_alias_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY url_alias
    ADD CONSTRAINT url_alias_pkey PRIMARY KEY (pid);


--
-- Name: users_name_key; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (uid);


--
-- Name: users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY users_roles
    ADD CONSTRAINT users_roles_pkey PRIMARY KEY (uid, rid);


--
-- Name: variable_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY variable
    ADD CONSTRAINT variable_pkey PRIMARY KEY (name);


--
-- Name: watchdog_pkey; Type: CONSTRAINT; Schema: public; Owner: drupal; Tablespace: 
--

ALTER TABLE ONLY watchdog
    ADD CONSTRAINT watchdog_pkey PRIMARY KEY (wid);


--
-- Name: batch_token_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX batch_token_idx ON batch USING btree (token);


--
-- Name: block_list_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX block_list_idx ON block USING btree (theme, status, region, weight, module);


--
-- Name: block_node_type_type_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX block_node_type_type_idx ON block_node_type USING btree (type);


--
-- Name: block_role_rid_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX block_role_rid_idx ON block_role USING btree (rid);


--
-- Name: blocked_ips_blocked_ip_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX blocked_ips_blocked_ip_idx ON blocked_ips USING btree (ip);


--
-- Name: cache_admin_menu_expire_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX cache_admin_menu_expire_idx ON cache_admin_menu USING btree (expire);


--
-- Name: cache_block_expire_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX cache_block_expire_idx ON cache_block USING btree (expire);


--
-- Name: cache_bootstrap_expire_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX cache_bootstrap_expire_idx ON cache_bootstrap USING btree (expire);


--
-- Name: cache_expire_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX cache_expire_idx ON cache USING btree (expire);


--
-- Name: cache_field_expire_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX cache_field_expire_idx ON cache_field USING btree (expire);


--
-- Name: cache_filter_expire_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX cache_filter_expire_idx ON cache_filter USING btree (expire);


--
-- Name: cache_form_expire_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX cache_form_expire_idx ON cache_form USING btree (expire);


--
-- Name: cache_l10n_update_expire_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX cache_l10n_update_expire_idx ON cache_l10n_update USING btree (expire);


--
-- Name: cache_menu_expire_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX cache_menu_expire_idx ON cache_menu USING btree (expire);


--
-- Name: cache_page_expire_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX cache_page_expire_idx ON cache_page USING btree (expire);


--
-- Name: cache_path_expire_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX cache_path_expire_idx ON cache_path USING btree (expire);


--
-- Name: date_format_type_title_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX date_format_type_title_idx ON date_format_type USING btree (title);


--
-- Name: field_config_active_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX field_config_active_idx ON field_config USING btree (active);


--
-- Name: field_config_deleted_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX field_config_deleted_idx ON field_config USING btree (deleted);


--
-- Name: field_config_field_name_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX field_config_field_name_idx ON field_config USING btree (field_name);


--
-- Name: field_config_instance_deleted_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX field_config_instance_deleted_idx ON field_config_instance USING btree (deleted);


--
-- Name: field_config_instance_field_name_bundle_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX field_config_instance_field_name_bundle_idx ON field_config_instance USING btree (field_name, entity_type, bundle);


--
-- Name: field_config_module_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX field_config_module_idx ON field_config USING btree (module);


--
-- Name: field_config_storage_active_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX field_config_storage_active_idx ON field_config USING btree (storage_active);


--
-- Name: field_config_storage_module_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX field_config_storage_module_idx ON field_config USING btree (storage_module);


--
-- Name: field_config_storage_type_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX field_config_storage_type_idx ON field_config USING btree (storage_type);


--
-- Name: field_config_type_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX field_config_type_idx ON field_config USING btree (type);


--
-- Name: file_managed_status_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX file_managed_status_idx ON file_managed USING btree (status);


--
-- Name: file_managed_timestamp_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX file_managed_timestamp_idx ON file_managed USING btree ("timestamp");


--
-- Name: file_managed_uid_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX file_managed_uid_idx ON file_managed USING btree (uid);


--
-- Name: file_usage_fid_count_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX file_usage_fid_count_idx ON file_usage USING btree (fid, count);


--
-- Name: file_usage_fid_module_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX file_usage_fid_module_idx ON file_usage USING btree (fid, module);


--
-- Name: file_usage_type_id_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX file_usage_type_id_idx ON file_usage USING btree (type, id);


--
-- Name: filter_format_status_weight_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX filter_format_status_weight_idx ON filter_format USING btree (status, weight);


--
-- Name: filter_list_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX filter_list_idx ON filter USING btree (weight, module, name);


--
-- Name: flood_allow_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX flood_allow_idx ON flood USING btree (event, identifier, "timestamp");


--
-- Name: flood_purge_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX flood_purge_idx ON flood USING btree (expiration);


--
-- Name: history_nid_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX history_nid_idx ON history USING btree (nid);


--
-- Name: languages_list_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX languages_list_idx ON languages USING btree (weight, name);


--
-- Name: locales_source_source_context_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX locales_source_source_context_idx ON locales_source USING btree (substr(source, 1, 30), context);


--
-- Name: locales_target_lid_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX locales_target_lid_idx ON locales_target USING btree (lid);


--
-- Name: locales_target_plid_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX locales_target_plid_idx ON locales_target USING btree (plid);


--
-- Name: locales_target_plural_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX locales_target_plural_idx ON locales_target USING btree (plural);


--
-- Name: menu_links_menu_parents_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX menu_links_menu_parents_idx ON menu_links USING btree (menu_name, p1, p2, p3, p4, p5, p6, p7, p8, p9);


--
-- Name: menu_links_menu_plid_expand_child_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX menu_links_menu_plid_expand_child_idx ON menu_links USING btree (menu_name, plid, expanded, has_children);


--
-- Name: menu_links_path_menu_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX menu_links_path_menu_idx ON menu_links USING btree (substr((link_path)::text, 1, 128), menu_name);


--
-- Name: menu_links_router_path_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX menu_links_router_path_idx ON menu_links USING btree (substr((router_path)::text, 1, 128));


--
-- Name: menu_router_fit_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX menu_router_fit_idx ON menu_router USING btree (fit);


--
-- Name: menu_router_tab_parent_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX menu_router_tab_parent_idx ON menu_router USING btree (substr((tab_parent)::text, 1, 64), weight, title);


--
-- Name: menu_router_tab_root_weight_title_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX menu_router_tab_root_weight_title_idx ON menu_router USING btree (substr((tab_root)::text, 1, 64), weight, title);


--
-- Name: node_language_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX node_language_idx ON node USING btree (language);


--
-- Name: node_node_changed_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX node_node_changed_idx ON node USING btree (changed);


--
-- Name: node_node_created_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX node_node_created_idx ON node USING btree (created);


--
-- Name: node_node_frontpage_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX node_node_frontpage_idx ON node USING btree (promote, status, sticky, created);


--
-- Name: node_node_status_type_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX node_node_status_type_idx ON node USING btree (status, type, nid);


--
-- Name: node_node_title_type_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX node_node_title_type_idx ON node USING btree (title, substr((type)::text, 1, 4));


--
-- Name: node_node_type_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX node_node_type_idx ON node USING btree (substr((type)::text, 1, 4));


--
-- Name: node_revision_nid_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX node_revision_nid_idx ON node_revision USING btree (nid);


--
-- Name: node_revision_uid_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX node_revision_uid_idx ON node_revision USING btree (uid);


--
-- Name: node_tnid_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX node_tnid_idx ON node USING btree (tnid);


--
-- Name: node_translate_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX node_translate_idx ON node USING btree (translate);


--
-- Name: node_uid_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX node_uid_idx ON node USING btree (uid);


--
-- Name: queue_expire_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX queue_expire_idx ON queue USING btree (expire);


--
-- Name: queue_name_created_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX queue_name_created_idx ON queue USING btree (name, created);


--
-- Name: registry_hook_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX registry_hook_idx ON registry USING btree (type, weight, module);


--
-- Name: role_name_weight_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX role_name_weight_idx ON role USING btree (name, weight);


--
-- Name: role_permission_permission_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX role_permission_permission_idx ON role_permission USING btree (permission);


--
-- Name: semaphore_expire_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX semaphore_expire_idx ON semaphore USING btree (expire);


--
-- Name: semaphore_value_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX semaphore_value_idx ON semaphore USING btree (value);


--
-- Name: sessions_ssid_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX sessions_ssid_idx ON sessions USING btree (ssid);


--
-- Name: sessions_timestamp_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX sessions_timestamp_idx ON sessions USING btree ("timestamp");


--
-- Name: sessions_uid_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX sessions_uid_idx ON sessions USING btree (uid);


--
-- Name: system_system_list_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX system_system_list_idx ON system USING btree (status, bootstrap, type, weight, name);


--
-- Name: system_type_name_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX system_type_name_idx ON system USING btree (type, name);


--
-- Name: url_alias_alias_language_pid_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX url_alias_alias_language_pid_idx ON url_alias USING btree (alias, language, pid);


--
-- Name: url_alias_source_language_pid_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX url_alias_source_language_pid_idx ON url_alias USING btree (source, language, pid);


--
-- Name: users_access_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX users_access_idx ON users USING btree (access);


--
-- Name: users_created_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX users_created_idx ON users USING btree (created);


--
-- Name: users_mail_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX users_mail_idx ON users USING btree (mail);


--
-- Name: users_picture_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX users_picture_idx ON users USING btree (picture);


--
-- Name: users_roles_rid_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX users_roles_rid_idx ON users_roles USING btree (rid);


--
-- Name: watchdog_severity_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX watchdog_severity_idx ON watchdog USING btree (severity);


--
-- Name: watchdog_type_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX watchdog_type_idx ON watchdog USING btree (type);


--
-- Name: watchdog_uid_idx; Type: INDEX; Schema: public; Owner: drupal; Tablespace: 
--

CREATE INDEX watchdog_uid_idx ON watchdog USING btree (uid);


--
-- Name: public; Type: ACL; Schema: -; Owner: petu
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM petu;
GRANT ALL ON SCHEMA public TO petu;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

